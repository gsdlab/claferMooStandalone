/*
All clafers: 21 | Abstract: 2 | Concrete: 19 | References: 0
Constraints: 40
Goals: 3
Global scope: 1..*
All names unique: False
*/
open util/integer
pred show {}


abstract sig c1_IMeasurable
{ r_c2_price : one c2_price
, r_c3_footprint : one c3_footprint
, r_c4_reliability : one c4_reliability }

sig c2_price
{ c2_price_ref : one Int }
{ one @r_c2_price.this }

sig c3_footprint
{ c3_footprint_ref : one Int }
{ one @r_c3_footprint.this }

sig c4_reliability
{ c4_reliability_ref : one Int }
{ one @r_c4_reliability.this }

abstract sig c5_BerkeleyDbC
{ r_c6_HAVE_STATISTICS : lone c6_HAVE_STATISTICS
, r_c22_HAVE_CRYPTO : lone c22_HAVE_CRYPTO
, r_c38_HAVE_INDEXES : one c38_HAVE_INDEXES
, r_c134_HAVE_REPLICATION : lone c134_HAVE_REPLICATION
, r_c150_HAVE_VERIFY : lone c150_HAVE_VERIFY
, r_c166_DIAGNOSTIC : lone c166_DIAGNOSTIC
, r_c182_HAVE_SEQUENCE : lone c182_HAVE_SEQUENCE
, r_c198_total_footprint : one c198_total_footprint
, r_c248_total_price : one c248_total_price
, r_c298_total_reliability : one c298_total_reliability }

sig c6_HAVE_STATISTICS extends c1_IMeasurable
{}
{ one @r_c6_HAVE_STATISTICS.this
  (this.@r_c3_footprint.@c3_footprint_ref) = 139
  (this.@r_c2_price.@c2_price_ref) = 0
  (this.@r_c4_reliability.@c4_reliability_ref) = 0 }

sig c22_HAVE_CRYPTO extends c1_IMeasurable
{}
{ one @r_c22_HAVE_CRYPTO.this
  (this.@r_c3_footprint.@c3_footprint_ref) = 19
  (this.@r_c2_price.@c2_price_ref) = 300
  (this.@r_c4_reliability.@c4_reliability_ref) = 0 }

sig c38_HAVE_INDEXES extends c1_IMeasurable
{ r_c54_HAVE_BTREE : one c54_HAVE_BTREE
, r_c102_HAVE_HASH : lone c102_HAVE_HASH
, r_c118_HAVE_QUEUE : lone c118_HAVE_QUEUE }
{ one @r_c38_HAVE_INDEXES.this
  (this.@r_c3_footprint.@c3_footprint_ref) = 0
  (this.@r_c2_price.@c2_price_ref) = 0
  (this.@r_c4_reliability.@c4_reliability_ref) = 0 }

sig c54_HAVE_BTREE extends c1_IMeasurable
{ r_c70_BTREE_FAST : lone c70_BTREE_FAST
, r_c86_BTREE_SMALL : lone c86_BTREE_SMALL }
{ one @r_c54_HAVE_BTREE.this
  let children = (r_c70_BTREE_FAST + r_c86_BTREE_SMALL) | one children
  (this.@r_c3_footprint.@c3_footprint_ref) = 0
  (this.@r_c2_price.@c2_price_ref) = 0
  (this.@r_c4_reliability.@c4_reliability_ref) = 0 }

sig c70_BTREE_FAST extends c1_IMeasurable
{}
{ one @r_c70_BTREE_FAST.this
  (this.@r_c3_footprint.@c3_footprint_ref) = 1800
  (this.@r_c2_price.@c2_price_ref) = 0
  (this.@r_c4_reliability.@c4_reliability_ref) = 0 }

sig c86_BTREE_SMALL extends c1_IMeasurable
{}
{ one @r_c86_BTREE_SMALL.this
  (this.@r_c3_footprint.@c3_footprint_ref) = 340
  (this.@r_c2_price.@c2_price_ref) = 0
  (this.@r_c4_reliability.@c4_reliability_ref) = 0 }

sig c102_HAVE_HASH extends c1_IMeasurable
{}
{ one @r_c102_HAVE_HASH.this
  (this.@r_c3_footprint.@c3_footprint_ref) = 56
  (this.@r_c2_price.@c2_price_ref) = 125
  (this.@r_c4_reliability.@c4_reliability_ref) = 0 }

sig c118_HAVE_QUEUE extends c1_IMeasurable
{}
{ one @r_c118_HAVE_QUEUE.this
  (this.@r_c3_footprint.@c3_footprint_ref) = 28
  (this.@r_c2_price.@c2_price_ref) = 50
  (this.@r_c4_reliability.@c4_reliability_ref) = 0 }

sig c134_HAVE_REPLICATION extends c1_IMeasurable
{}
{ one @r_c134_HAVE_REPLICATION.this
  (this.@r_c3_footprint.@c3_footprint_ref) = 89
  (this.@r_c2_price.@c2_price_ref) = 200
  (this.@r_c4_reliability.@c4_reliability_ref) = 1 }

sig c150_HAVE_VERIFY extends c1_IMeasurable
{}
{ one @r_c150_HAVE_VERIFY.this
  (this.@r_c3_footprint.@c3_footprint_ref) = 50
  (this.@r_c2_price.@c2_price_ref) = 100
  (this.@r_c4_reliability.@c4_reliability_ref) = 1 }

sig c166_DIAGNOSTIC extends c1_IMeasurable
{}
{ one @r_c166_DIAGNOSTIC.this
  (this.@r_c3_footprint.@c3_footprint_ref) = 191
  (this.@r_c2_price.@c2_price_ref) = 0
  (this.@r_c4_reliability.@c4_reliability_ref) = 1 }

sig c182_HAVE_SEQUENCE extends c1_IMeasurable
{}
{ one @r_c182_HAVE_SEQUENCE.this
  (this.@r_c3_footprint.@c3_footprint_ref) = 20
  (this.@r_c2_price.@c2_price_ref) = 50
  (this.@r_c4_reliability.@c4_reliability_ref) = 0 }

sig c198_total_footprint
{ c198_total_footprint_ref : one Int }
{ one @r_c198_total_footprint.this
  this.@c198_total_footprint_ref = ((((((((((((((this.~@r_c198_total_footprint).@r_c6_HAVE_STATISTICS).@r_c3_footprint.@c3_footprint_ref).add[(((this.~@r_c198_total_footprint).@r_c22_HAVE_CRYPTO).@r_c3_footprint.@c3_footprint_ref)]).add[(((this.~@r_c198_total_footprint).@r_c38_HAVE_INDEXES).@r_c3_footprint.@c3_footprint_ref)]).add[((((this.~@r_c198_total_footprint).@r_c38_HAVE_INDEXES).@r_c54_HAVE_BTREE).@r_c3_footprint.@c3_footprint_ref)]).add[(((((this.~@r_c198_total_footprint).@r_c38_HAVE_INDEXES).@r_c54_HAVE_BTREE).@r_c70_BTREE_FAST).@r_c3_footprint.@c3_footprint_ref)]).add[(((((this.~@r_c198_total_footprint).@r_c38_HAVE_INDEXES).@r_c54_HAVE_BTREE).@r_c86_BTREE_SMALL).@r_c3_footprint.@c3_footprint_ref)]).add[((((this.~@r_c198_total_footprint).@r_c38_HAVE_INDEXES).@r_c102_HAVE_HASH).@r_c3_footprint.@c3_footprint_ref)]).add[((((this.~@r_c198_total_footprint).@r_c38_HAVE_INDEXES).@r_c118_HAVE_QUEUE).@r_c3_footprint.@c3_footprint_ref)]).add[(((this.~@r_c198_total_footprint).@r_c134_HAVE_REPLICATION).@r_c3_footprint.@c3_footprint_ref)]).add[(((this.~@r_c198_total_footprint).@r_c150_HAVE_VERIFY).@r_c3_footprint.@c3_footprint_ref)]).add[(((this.~@r_c198_total_footprint).@r_c166_DIAGNOSTIC).@r_c3_footprint.@c3_footprint_ref)]).add[(((this.~@r_c198_total_footprint).@r_c182_HAVE_SEQUENCE).@r_c3_footprint.@c3_footprint_ref)]) }

sig c248_total_price
{ c248_total_price_ref : one Int }
{ one @r_c248_total_price.this
  this.@c248_total_price_ref = ((((((((((((((this.~@r_c248_total_price).@r_c6_HAVE_STATISTICS).@r_c2_price.@c2_price_ref).add[(((this.~@r_c248_total_price).@r_c22_HAVE_CRYPTO).@r_c2_price.@c2_price_ref)]).add[(((this.~@r_c248_total_price).@r_c38_HAVE_INDEXES).@r_c2_price.@c2_price_ref)]).add[((((this.~@r_c248_total_price).@r_c38_HAVE_INDEXES).@r_c54_HAVE_BTREE).@r_c2_price.@c2_price_ref)]).add[(((((this.~@r_c248_total_price).@r_c38_HAVE_INDEXES).@r_c54_HAVE_BTREE).@r_c70_BTREE_FAST).@r_c2_price.@c2_price_ref)]).add[(((((this.~@r_c248_total_price).@r_c38_HAVE_INDEXES).@r_c54_HAVE_BTREE).@r_c86_BTREE_SMALL).@r_c2_price.@c2_price_ref)]).add[((((this.~@r_c248_total_price).@r_c38_HAVE_INDEXES).@r_c102_HAVE_HASH).@r_c2_price.@c2_price_ref)]).add[((((this.~@r_c248_total_price).@r_c38_HAVE_INDEXES).@r_c118_HAVE_QUEUE).@r_c2_price.@c2_price_ref)]).add[(((this.~@r_c248_total_price).@r_c134_HAVE_REPLICATION).@r_c2_price.@c2_price_ref)]).add[(((this.~@r_c248_total_price).@r_c150_HAVE_VERIFY).@r_c2_price.@c2_price_ref)]).add[(((this.~@r_c248_total_price).@r_c166_DIAGNOSTIC).@r_c2_price.@c2_price_ref)]).add[(((this.~@r_c248_total_price).@r_c182_HAVE_SEQUENCE).@r_c2_price.@c2_price_ref)]) }

sig c298_total_reliability
{ c298_total_reliability_ref : one Int }
{ one @r_c298_total_reliability.this
  this.@c298_total_reliability_ref = ((((((((((((((this.~@r_c298_total_reliability).@r_c6_HAVE_STATISTICS).@r_c4_reliability.@c4_reliability_ref).add[(((this.~@r_c298_total_reliability).@r_c22_HAVE_CRYPTO).@r_c4_reliability.@c4_reliability_ref)]).add[(((this.~@r_c298_total_reliability).@r_c38_HAVE_INDEXES).@r_c4_reliability.@c4_reliability_ref)]).add[((((this.~@r_c298_total_reliability).@r_c38_HAVE_INDEXES).@r_c54_HAVE_BTREE).@r_c4_reliability.@c4_reliability_ref)]).add[(((((this.~@r_c298_total_reliability).@r_c38_HAVE_INDEXES).@r_c54_HAVE_BTREE).@r_c70_BTREE_FAST).@r_c4_reliability.@c4_reliability_ref)]).add[(((((this.~@r_c298_total_reliability).@r_c38_HAVE_INDEXES).@r_c54_HAVE_BTREE).@r_c86_BTREE_SMALL).@r_c4_reliability.@c4_reliability_ref)]).add[((((this.~@r_c298_total_reliability).@r_c38_HAVE_INDEXES).@r_c102_HAVE_HASH).@r_c4_reliability.@c4_reliability_ref)]).add[((((this.~@r_c298_total_reliability).@r_c38_HAVE_INDEXES).@r_c118_HAVE_QUEUE).@r_c4_reliability.@c4_reliability_ref)]).add[(((this.~@r_c298_total_reliability).@r_c134_HAVE_REPLICATION).@r_c4_reliability.@c4_reliability_ref)]).add[(((this.~@r_c298_total_reliability).@r_c150_HAVE_VERIFY).@r_c4_reliability.@c4_reliability_ref)]).add[(((this.~@r_c298_total_reliability).@r_c166_DIAGNOSTIC).@r_c4_reliability.@c4_reliability_ref)]).add[(((this.~@r_c298_total_reliability).@r_c182_HAVE_SEQUENCE).@r_c4_reliability.@c4_reliability_ref)]) }

one sig c348_simpleConfig extends c5_BerkeleyDbC
{}
{ ((((((no this.@r_c6_HAVE_STATISTICS) && (some this.@r_c22_HAVE_CRYPTO)) && (no ((this.@r_c38_HAVE_INDEXES).@r_c54_HAVE_BTREE).@r_c70_BTREE_FAST)) && (some ((this.@r_c38_HAVE_INDEXES).@r_c54_HAVE_BTREE).@r_c86_BTREE_SMALL)) && (some (this.@r_c38_HAVE_INDEXES).@r_c102_HAVE_HASH)) && (no this.@r_c134_HAVE_REPLICATION)) && (some this.@r_c182_HAVE_SEQUENCE) }

objectives o_global {
minimize c348_simpleConfig.@r_c198_total_footprint.@c198_total_footprint_ref ,
minimize c348_simpleConfig.@r_c248_total_price.@c248_total_price_ref ,
maximize c348_simpleConfig.@r_c298_total_reliability.@c298_total_reliability_ref 
}