/*
All clafers: 11 | Abstract: 2 | Concrete: 9 | References: 0
Constraints: 9
Goals: 1
Global scope: 1..*
All names unique: False
*/
open util/integer
pred show {}


abstract sig c1_IMeasurable
{ r_c2_footprint : one c2_footprint }

sig c2_footprint
{ c2_footprint_ref : one Int }
{ one @r_c2_footprint.this }

abstract sig c3_Prevayler
{ r_c4_PrevaylerSPL : one c4_PrevaylerSPL
, r_c10_Replication : lone c10_Replication
, r_c16_GZip : lone c16_GZip
, r_c22_Censor : lone c22_Censor
, r_c30_Monitor : lone c30_Monitor
, r_c36_Snapshot : lone c36_Snapshot
, r_c42_total_footprint : one c42_total_footprint }

sig c4_PrevaylerSPL extends c1_IMeasurable
{}
{ one @r_c4_PrevaylerSPL.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 873 }

sig c10_Replication extends c1_IMeasurable
{}
{ one @r_c10_Replication.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 523 }

sig c16_GZip extends c1_IMeasurable
{}
{ one @r_c16_GZip.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 54 }

sig c22_Censor extends c1_IMeasurable
{}
{ one @r_c22_Censor.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 50
  some (this.~@r_c22_Censor).@r_c36_Snapshot }

sig c30_Monitor extends c1_IMeasurable
{}
{ one @r_c30_Monitor.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 77 }

sig c36_Snapshot extends c1_IMeasurable
{}
{ one @r_c36_Snapshot.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 108 }

sig c42_total_footprint
{ c42_total_footprint_ref : one Int }
{ one @r_c42_total_footprint.this
  this.@c42_total_footprint_ref = ((((((((this.~@r_c42_total_footprint).@r_c4_PrevaylerSPL).@r_c2_footprint.@c2_footprint_ref).add[(((this.~@r_c42_total_footprint).@r_c10_Replication).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c42_total_footprint).@r_c16_GZip).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c42_total_footprint).@r_c22_Censor).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c42_total_footprint).@r_c30_Monitor).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c42_total_footprint).@r_c36_Snapshot).@r_c2_footprint.@c2_footprint_ref)]) }

one sig c68_simpleConfig extends c3_Prevayler
{}
{ (((some this.@r_c4_PrevaylerSPL) && (no this.@r_c16_GZip)) && (no this.@r_c22_Censor)) && (no this.@r_c36_Snapshot) }

objectives o_global {
minimize c68_simpleConfig.@r_c42_total_footprint.@c42_total_footprint_ref 
}