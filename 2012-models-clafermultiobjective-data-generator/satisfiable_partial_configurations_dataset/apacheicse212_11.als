/*
All clafers: 14 | Abstract: 2 | Concrete: 12 | References: 0
Constraints: 12
Goals: 1
Global scope: 1..*
All names unique: False
*/
open util/integer
pred show {}


abstract sig c1_IMeasurable
{ r_c2_performance : one c2_performance }

sig c2_performance
{ c2_performance_ref : one Int }
{ one @r_c2_performance.this }

abstract sig c3_Apache
{ r_c4_Base : one c4_Base
, r_c10_HostnameLookups : lone c10_HostnameLookups
, r_c17_KeepAlive : lone c17_KeepAlive
, r_c23_EnableSendfile : lone c23_EnableSendfile
, r_c29_FollowSymLinks : lone c29_FollowSymLinks
, r_c35_AccessLog : lone c35_AccessLog
, r_c42_ExtendedStatus : lone c42_ExtendedStatus
, r_c49_InMemory : lone c49_InMemory
, r_c57_Handle : lone c57_Handle
, r_c63_total_performance : one c63_total_performance }
{ (this.@r_c63_total_performance.@c63_total_performance_ref) = ((((((((((this.@r_c4_Base).@r_c2_performance.@c2_performance_ref).add[((this.@r_c10_HostnameLookups).@r_c2_performance.@c2_performance_ref)]).add[((this.@r_c17_KeepAlive).@r_c2_performance.@c2_performance_ref)]).add[((this.@r_c23_EnableSendfile).@r_c2_performance.@c2_performance_ref)]).add[((this.@r_c29_FollowSymLinks).@r_c2_performance.@c2_performance_ref)]).add[((this.@r_c35_AccessLog).@r_c2_performance.@c2_performance_ref)]).add[((this.@r_c42_ExtendedStatus).@r_c2_performance.@c2_performance_ref)]).add[((this.@r_c49_InMemory).@r_c2_performance.@c2_performance_ref)]).add[((this.@r_c57_Handle).@r_c2_performance.@c2_performance_ref)]) }

sig c4_Base extends c1_IMeasurable
{}
{ one @r_c4_Base.this
  (this.@r_c2_performance.@c2_performance_ref) = 150 }

sig c10_HostnameLookups extends c1_IMeasurable
{}
{ one @r_c10_HostnameLookups.this
  (this.@r_c2_performance.@c2_performance_ref) = (-26) }

sig c17_KeepAlive extends c1_IMeasurable
{}
{ one @r_c17_KeepAlive.this
  (this.@r_c2_performance.@c2_performance_ref) = 105 }

sig c23_EnableSendfile extends c1_IMeasurable
{}
{ one @r_c23_EnableSendfile.this
  (this.@r_c2_performance.@c2_performance_ref) = 15 }

sig c29_FollowSymLinks extends c1_IMeasurable
{}
{ one @r_c29_FollowSymLinks.this
  (this.@r_c2_performance.@c2_performance_ref) = 0 }

sig c35_AccessLog extends c1_IMeasurable
{}
{ one @r_c35_AccessLog.this
  (this.@r_c2_performance.@c2_performance_ref) = (-15) }

sig c42_ExtendedStatus extends c1_IMeasurable
{}
{ one @r_c42_ExtendedStatus.this
  (this.@r_c2_performance.@c2_performance_ref) = (-11) }

sig c49_InMemory extends c1_IMeasurable
{}
{ one @r_c49_InMemory.this
  no (this.~@r_c49_InMemory).@r_c57_Handle
  (this.@r_c2_performance.@c2_performance_ref) = 26 }

sig c57_Handle extends c1_IMeasurable
{}
{ one @r_c57_Handle.this
  (this.@r_c2_performance.@c2_performance_ref) = 4 }

sig c63_total_performance
{ c63_total_performance_ref : one Int }
{ one @r_c63_total_performance.this }

one sig c101_simpleConfig extends c3_Apache
{}
{ ((((((some this.@r_c4_Base) && (no this.@r_c10_HostnameLookups)) && (some this.@r_c17_KeepAlive)) && (no this.@r_c23_EnableSendfile)) && (some this.@r_c29_FollowSymLinks)) && (some this.@r_c42_ExtendedStatus)) && (no this.@r_c49_InMemory) }

objectives o_global {
maximize c101_simpleConfig.@r_c63_total_performance.@c63_total_performance_ref 
}