/*
All clafers: 16 | Abstract: 2 | Concrete: 14 | References: 0
Constraints: 13
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

abstract sig c3_PKJab
{ r_c4_Base : one c4_Base
, r_c10_ContactListSource : one c10_ContactListSource
, r_c22_XEP0085 : lone c22_XEP0085
, r_c40_History : lone c40_History
, r_c46_Timestamps : lone c46_Timestamps
, r_c52_XEP0092 : lone c52_XEP0092
, r_c64_ThemeSelection : lone c64_ThemeSelection
, r_c70_total_footprint : one c70_total_footprint }

sig c4_Base extends c1_IMeasurable
{}
{ one @r_c4_Base.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 696 }

sig c10_ContactListSource extends c1_IMeasurable
{ r_c16_ServerRoster : one c16_ServerRoster }
{ one @r_c10_ContactListSource.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c16_ServerRoster extends c1_IMeasurable
{}
{ one @r_c16_ServerRoster.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c22_XEP0085 extends c1_IMeasurable
{ r_c28_Composing : one c28_Composing
, r_c34_SendComposing : lone c34_SendComposing }
{ one @r_c22_XEP0085.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 27 }

sig c28_Composing extends c1_IMeasurable
{}
{ one @r_c28_Composing.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c34_SendComposing extends c1_IMeasurable
{}
{ one @r_c34_SendComposing.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 13 }

sig c40_History extends c1_IMeasurable
{}
{ one @r_c40_History.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 5 }

sig c46_Timestamps extends c1_IMeasurable
{}
{ one @r_c46_Timestamps.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 3 }

sig c52_XEP0092 extends c1_IMeasurable
{ r_c58_SendVersion : lone c58_SendVersion }
{ one @r_c52_XEP0092.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c58_SendVersion extends c1_IMeasurable
{}
{ one @r_c58_SendVersion.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 5 }

sig c64_ThemeSelection extends c1_IMeasurable
{}
{ one @r_c64_ThemeSelection.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 58 }

sig c70_total_footprint
{ c70_total_footprint_ref : one Int }
{ one @r_c70_total_footprint.this
  this.@c70_total_footprint_ref = (((((((((((((this.~@r_c70_total_footprint).@r_c4_Base).@r_c2_footprint.@c2_footprint_ref).add[(((this.~@r_c70_total_footprint).@r_c10_ContactListSource).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c70_total_footprint).@r_c10_ContactListSource).@r_c16_ServerRoster).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c70_total_footprint).@r_c22_XEP0085).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c70_total_footprint).@r_c22_XEP0085).@r_c28_Composing).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c70_total_footprint).@r_c22_XEP0085).@r_c34_SendComposing).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c70_total_footprint).@r_c40_History).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c70_total_footprint).@r_c46_Timestamps).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c70_total_footprint).@r_c52_XEP0092).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c70_total_footprint).@r_c52_XEP0092).@r_c58_SendVersion).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c70_total_footprint).@r_c64_ThemeSelection).@r_c2_footprint.@c2_footprint_ref)]) }

one sig c116_simpleConfig extends c3_PKJab
{}
{ ((((((((some this.@r_c4_Base) && (some this.@r_c10_ContactListSource)) && (some (this.@r_c10_ContactListSource).@r_c16_ServerRoster)) && (no (this.@r_c22_XEP0085).@r_c34_SendComposing)) && (some this.@r_c40_History)) && (some this.@r_c46_Timestamps)) && (some this.@r_c52_XEP0092)) && (no (this.@r_c52_XEP0092).@r_c58_SendVersion)) && (some this.@r_c64_ThemeSelection) }

objectives o_global {
minimize c116_simpleConfig.@r_c70_total_footprint.@c70_total_footprint_ref 
}