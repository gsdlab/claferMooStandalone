/*
All clafers: 14 | Abstract: 2 | Concrete: 12 | References: 0
Constraints: 11
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

abstract sig c3_BerkeleyDbC
{ r_c4_HAVE_CRYPTO : lone c4_HAVE_CRYPTO
, r_c10_HAVE_HASH : lone c10_HAVE_HASH
, r_c16_HAVE_QUEUE : lone c16_HAVE_QUEUE
, r_c22_HAVE_REPLICATION : lone c22_HAVE_REPLICATION
, r_c28_HAVE_VERIFY : lone c28_HAVE_VERIFY
, r_c34_HAVE_SEQUENCE : lone c34_HAVE_SEQUENCE
, r_c40_HAVE_STATISTICS : lone c40_HAVE_STATISTICS
, r_c46_DIAGNOSTIC : lone c46_DIAGNOSTIC
, r_c52_SYNTETHIC_BASE_FEATURE : one c52_SYNTETHIC_BASE_FEATURE
, r_c58_total_footprint : one c58_total_footprint }

sig c4_HAVE_CRYPTO extends c1_IMeasurable
{}
{ one @r_c4_HAVE_CRYPTO.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 10 }

sig c10_HAVE_HASH extends c1_IMeasurable
{}
{ one @r_c10_HAVE_HASH.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 56 }

sig c16_HAVE_QUEUE extends c1_IMeasurable
{}
{ one @r_c16_HAVE_QUEUE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 28 }

sig c22_HAVE_REPLICATION extends c1_IMeasurable
{}
{ one @r_c22_HAVE_REPLICATION.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 44 }

sig c28_HAVE_VERIFY extends c1_IMeasurable
{}
{ one @r_c28_HAVE_VERIFY.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 25 }

sig c34_HAVE_SEQUENCE extends c1_IMeasurable
{}
{ one @r_c34_HAVE_SEQUENCE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 10 }

sig c40_HAVE_STATISTICS extends c1_IMeasurable
{}
{ one @r_c40_HAVE_STATISTICS.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 139 }

sig c46_DIAGNOSTIC extends c1_IMeasurable
{}
{ one @r_c46_DIAGNOSTIC.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 54 }

sig c52_SYNTETHIC_BASE_FEATURE extends c1_IMeasurable
{}
{ one @r_c52_SYNTETHIC_BASE_FEATURE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 881 }

sig c58_total_footprint
{ c58_total_footprint_ref : one Int }
{ one @r_c58_total_footprint.this
  this.@c58_total_footprint_ref = (((((((((((this.~@r_c58_total_footprint).@r_c4_HAVE_CRYPTO).@r_c2_footprint.@c2_footprint_ref).add[(((this.~@r_c58_total_footprint).@r_c10_HAVE_HASH).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c58_total_footprint).@r_c16_HAVE_QUEUE).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c58_total_footprint).@r_c22_HAVE_REPLICATION).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c58_total_footprint).@r_c28_HAVE_VERIFY).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c58_total_footprint).@r_c34_HAVE_SEQUENCE).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c58_total_footprint).@r_c40_HAVE_STATISTICS).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c58_total_footprint).@r_c46_DIAGNOSTIC).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c58_total_footprint).@r_c52_SYNTETHIC_BASE_FEATURE).@r_c2_footprint.@c2_footprint_ref)]) }

one sig c96_simpleConfig extends c3_BerkeleyDbC
{}
{ (((some this.@r_c4_HAVE_CRYPTO) && (no this.@r_c22_HAVE_REPLICATION)) && (some this.@r_c40_HAVE_STATISTICS)) && (some this.@r_c52_SYNTETHIC_BASE_FEATURE) }

objectives o_global {
minimize c96_simpleConfig.@r_c58_total_footprint.@c58_total_footprint_ref 
}