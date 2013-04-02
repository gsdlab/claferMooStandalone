'''
Created on Aug 13, 2012

@author: rafaelolaechea
'''
import argparse
import subprocess
import os
import platform
import sys
from xml_parser_helper import load_xml_model
from spl_claferanalyzer import SPL_ClaferAnalyzer
from ComputeRelaxedBoundsGoals import ComputeRelaxedBoundsGoalsCls
from AppendPartialInstanceAndGoals import generate_and_append_partial_instances_and_goals  
from AppendPartialInstanceAndGoals import fix_refs
from AlloyBackToClafer import show_clafers_from_alloy_solutions
from ExpandSumOperator import expand_feature_types_sum
from ConstraintProgramming import print_conversion_to_constraints


def execute_main():

    
    if platform.system() is 'Windows':
        defaultHeapSize = 1340
    else:
        defaultHeapSize = 4096

    parser = argparse.ArgumentParser(description="Generates optimal instances" \
                                     "out of an attributed feature model" )
                                                 
    parser.add_argument('clafer_feature_model_filename', metavar='F', type=str, nargs=1,
                       help='Attributed Feature Model in clafer filename')

    parser.add_argument('--onlycomputerelaxedbounds',   dest='onlycomputerelaxedbounds',  action='store_true',
                       default=False, help='Only show a set of bounds for goals and dont do anything else')
        
    parser.add_argument('--noexecution',   dest='noexecution',  action='store_true',
                       default=False, help='Do not execute generated als file')
    
    parser.add_argument('--preservenames',   dest='preserve_clafer_names',  action='store_true',
                       default=False, help='Keep unique clafer names')

    parser.add_argument('--maxHeapSize',   dest='maxHeapSize',  action='store', type=int,
                       default=defaultHeapSize, help='The maximum size of the heap')

    args = parser.parse_args()
    filename = args.clafer_feature_model_filename[0]

    try:    
        subprocess.check_output(["clafer",  '--mode=xml','--nr', filename])
    except subprocess.CalledProcessError, e:
        sys.stderr.write(e.output)      
    
    spl_transformer = SPL_ClaferAnalyzer(filename[:-4] + ".xml")    

    if len(spl_transformer.get_goals_as_tuple_xml_is_maximize()) == 0:
        sys.stderr.write("No goals in found clafer file.\n")
        sys.exit(1)

    if  args.onlycomputerelaxedbounds:
        BoundsGoalComputer =  ComputeRelaxedBoundsGoalsCls(spl_transformer)
        for lowerBound, UpperBound in BoundsGoalComputer.getSimpleBounds():
            print "%s,%s" % (lowerBound, UpperBound)
    else:
        expand_feature_types_sum(filename, spl_transformer)
        filename = filename[:-4] +  "_desugared.cfr"
    
        try:    
            subprocess.check_output(["clafer",  '--mode=xml','--nr', filename])
        except subprocess.CalledProcessError, e:
            sys.stderr.write(e.output) 

        spl_transformer = SPL_ClaferAnalyzer(filename[:-4] + ".xml") 

        try:    
            subprocess.check_output(["clafer",  '--nr', filename])
        except subprocess.CalledProcessError, e:
                sys.stderr.write(e.output)

        als_fp = open(filename[:-4] + ".als", "a")
        generate_and_append_partial_instances_and_goals(filename[:-4] + ".xml", als_fp)
        als_fp.close()

        als_fp1 = open(filename[:-4] + ".als", "r")
        als_fp2 = open(filename[:-4] + "_tmp.als", "w")
        fix_refs(als_fp1, als_fp2, filename[:-4] + ".xml")
        als_fp1.close()
        als_fp2.close()
        
        remove_alloy_solutions()   
    
        if not args.noexecution:
        	
            print "Running  alloy on generated als."
        
            try:    

                subprocess.check_output(["java", '-Xss3m', '-Xms512m', '-Xmx' + str(args.maxHeapSize) + 'm',  '-jar', __file__[:-34] + '../tools/multiobjective_alloy_cmd.jar', (filename[:-4] + "_tmp.als")])

            except subprocess.CalledProcessError, e:
                sys.stderr.write(e.output)
            print "Finished Running alloy on generated als."    
            print "====="
            spl_transformer = SPL_ClaferAnalyzer(filename[:-4] + ".xml")
            show_clafers_from_alloy_solutions(args.preserve_clafer_names, spl_transformer)
     



def remove_alloy_solutions():
    j =1;
    while(os.path.exists("alloy_solutions_" + str(j)+ ".xml") or j < 10):
        if os.path.exists("alloy_solutions_" + str(j)+ ".xml"):
            os.remove("alloy_solutions_" + str(j)+ ".xml")        
        j += 1
                              
if __name__ == '__main__':
    execute_main()
