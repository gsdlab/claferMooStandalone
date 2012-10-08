/*
All clafers: 90 | Abstract: 2 | Concrete: 88 | References: 0
Constraints: 89
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

abstract sig c3_SQLite
{ r_c4_OperatingSystemCharacteristics : one c4_OperatingSystemCharacteristics
, r_c64_EnableFeatures : one c64_EnableFeatures
, r_c156_DisableFeatures : one c156_DisableFeatures
, r_c174_OmitFeatures : one c174_OmitFeatures
, r_c554_SQLITE_DEBUG : lone c554_SQLITE_DEBUG
, r_c560_SQLITE_MEMDEBUG : lone c560_SQLITE_MEMDEBUG
, r_c566_total_footprint : one c566_total_footprint }

sig c4_OperatingSystemCharacteristics extends c1_IMeasurable
{ r_c10_SQLITE_4_BYTE_ALIGNED_MALLOC : one c10_SQLITE_4_BYTE_ALIGNED_MALLOC
, r_c16_SQLITE_CASE_SENSITIVE_LIKE : lone c16_SQLITE_CASE_SENSITIVE_LIKE
, r_c22_SQLITE_HAVE_ISNAN : lone c22_SQLITE_HAVE_ISNAN
, r_c28_SQLITE_SECURE_DELETE : lone c28_SQLITE_SECURE_DELETE
, r_c34_ChooseSQLITE_TEMP_STORE : lone c34_ChooseSQLITE_TEMP_STORE }
{ one @r_c4_OperatingSystemCharacteristics.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 888 }

sig c10_SQLITE_4_BYTE_ALIGNED_MALLOC extends c1_IMeasurable
{}
{ one @r_c10_SQLITE_4_BYTE_ALIGNED_MALLOC.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c16_SQLITE_CASE_SENSITIVE_LIKE extends c1_IMeasurable
{}
{ one @r_c16_SQLITE_CASE_SENSITIVE_LIKE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c22_SQLITE_HAVE_ISNAN extends c1_IMeasurable
{}
{ one @r_c22_SQLITE_HAVE_ISNAN.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c28_SQLITE_SECURE_DELETE extends c1_IMeasurable
{}
{ one @r_c28_SQLITE_SECURE_DELETE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c34_ChooseSQLITE_TEMP_STORE extends c1_IMeasurable
{ r_c40_SQLITE_TEMP_STORE_EQ_0 : lone c40_SQLITE_TEMP_STORE_EQ_0
, r_c46_SQLITE_TEMP_STORE_EQ_1 : lone c46_SQLITE_TEMP_STORE_EQ_1
, r_c52_SQLITE_TEMP_STORE_EQ_2 : lone c52_SQLITE_TEMP_STORE_EQ_2
, r_c58_SQLITE_TEMP_STORE_EQ_3 : lone c58_SQLITE_TEMP_STORE_EQ_3 }
{ one @r_c34_ChooseSQLITE_TEMP_STORE.this
  let children = (r_c40_SQLITE_TEMP_STORE_EQ_0 + r_c46_SQLITE_TEMP_STORE_EQ_1 + r_c52_SQLITE_TEMP_STORE_EQ_2 + r_c58_SQLITE_TEMP_STORE_EQ_3) | one children
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c40_SQLITE_TEMP_STORE_EQ_0 extends c1_IMeasurable
{}
{ one @r_c40_SQLITE_TEMP_STORE_EQ_0.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c46_SQLITE_TEMP_STORE_EQ_1 extends c1_IMeasurable
{}
{ one @r_c46_SQLITE_TEMP_STORE_EQ_1.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c52_SQLITE_TEMP_STORE_EQ_2 extends c1_IMeasurable
{}
{ one @r_c52_SQLITE_TEMP_STORE_EQ_2.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c58_SQLITE_TEMP_STORE_EQ_3 extends c1_IMeasurable
{}
{ one @r_c58_SQLITE_TEMP_STORE_EQ_3.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c64_EnableFeatures extends c1_IMeasurable
{ r_c70_SQLITE_ENABLE_ATOMIC_WRITE : lone c70_SQLITE_ENABLE_ATOMIC_WRITE
, r_c76_SQLITE_ENABLE_COLUMN_METADATA : lone c76_SQLITE_ENABLE_COLUMN_METADATA
, r_c84_SQLITE_ENABLE_FTS3 : lone c84_SQLITE_ENABLE_FTS3
, r_c90_SQLITE_ENABLE_FTS3_PARENTHESIS : lone c90_SQLITE_ENABLE_FTS3_PARENTHESIS
, r_c96_SQLITE_ENABLE_MEMORY_MANAGEMENT : lone c96_SQLITE_ENABLE_MEMORY_MANAGEMENT
, r_c102_ChooseMemSys : lone c102_ChooseMemSys
, r_c120_SQLITE_ENABLE_RTREE : lone c120_SQLITE_ENABLE_RTREE
, r_c126_SQLITE_ENABLE_STAT2 : lone c126_SQLITE_ENABLE_STAT2
, r_c132_SQLITE_ENABLE_UPDATE_DELETE_LIMIT : lone c132_SQLITE_ENABLE_UPDATE_DELETE_LIMIT
, r_c138_SQLITE_ENABLE_UNLOCK_NOTIFY : lone c138_SQLITE_ENABLE_UNLOCK_NOTIFY
, r_c144_SQLITE_SOUNDEX : lone c144_SQLITE_SOUNDEX
, r_c150_YYTRACKMAXSTACKDEPTH : lone c150_YYTRACKMAXSTACKDEPTH }
{ one @r_c64_EnableFeatures.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c70_SQLITE_ENABLE_ATOMIC_WRITE extends c1_IMeasurable
{}
{ one @r_c70_SQLITE_ENABLE_ATOMIC_WRITE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 3 }

sig c76_SQLITE_ENABLE_COLUMN_METADATA extends c1_IMeasurable
{}
{ one @r_c76_SQLITE_ENABLE_COLUMN_METADATA.this
  no (((this.~@r_c76_SQLITE_ENABLE_COLUMN_METADATA).~@r_c64_EnableFeatures).@r_c174_OmitFeatures).@r_c310_SQLITE_OMIT_DECLTYPE
  (this.@r_c2_footprint.@c2_footprint_ref) = 2 }

sig c84_SQLITE_ENABLE_FTS3 extends c1_IMeasurable
{}
{ one @r_c84_SQLITE_ENABLE_FTS3.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 100 }

sig c90_SQLITE_ENABLE_FTS3_PARENTHESIS extends c1_IMeasurable
{}
{ one @r_c90_SQLITE_ENABLE_FTS3_PARENTHESIS.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c96_SQLITE_ENABLE_MEMORY_MANAGEMENT extends c1_IMeasurable
{}
{ one @r_c96_SQLITE_ENABLE_MEMORY_MANAGEMENT.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 1 }

sig c102_ChooseMemSys extends c1_IMeasurable
{ r_c108_SQLITE_ENABLE_MEMSYS3 : lone c108_SQLITE_ENABLE_MEMSYS3
, r_c114_SQLITE_ENABLE_MEMSYS5 : lone c114_SQLITE_ENABLE_MEMSYS5 }
{ one @r_c102_ChooseMemSys.this
  let children = (r_c108_SQLITE_ENABLE_MEMSYS3 + r_c114_SQLITE_ENABLE_MEMSYS5) | one children
  (this.@r_c2_footprint.@c2_footprint_ref) = 3 }

sig c108_SQLITE_ENABLE_MEMSYS3 extends c1_IMeasurable
{}
{ one @r_c108_SQLITE_ENABLE_MEMSYS3.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 2 }

sig c114_SQLITE_ENABLE_MEMSYS5 extends c1_IMeasurable
{}
{ one @r_c114_SQLITE_ENABLE_MEMSYS5.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c120_SQLITE_ENABLE_RTREE extends c1_IMeasurable
{}
{ one @r_c120_SQLITE_ENABLE_RTREE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 33 }

sig c126_SQLITE_ENABLE_STAT2 extends c1_IMeasurable
{}
{ one @r_c126_SQLITE_ENABLE_STAT2.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 4 }

sig c132_SQLITE_ENABLE_UPDATE_DELETE_LIMIT extends c1_IMeasurable
{}
{ one @r_c132_SQLITE_ENABLE_UPDATE_DELETE_LIMIT.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 1 }

sig c138_SQLITE_ENABLE_UNLOCK_NOTIFY extends c1_IMeasurable
{}
{ one @r_c138_SQLITE_ENABLE_UNLOCK_NOTIFY.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 3 }

sig c144_SQLITE_SOUNDEX extends c1_IMeasurable
{}
{ one @r_c144_SQLITE_SOUNDEX.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 1 }

sig c150_YYTRACKMAXSTACKDEPTH extends c1_IMeasurable
{}
{ one @r_c150_YYTRACKMAXSTACKDEPTH.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c156_DisableFeatures extends c1_IMeasurable
{ r_c162_SQLITE_DISABLE_LFS : lone c162_SQLITE_DISABLE_LFS
, r_c168_SQLITE_DISABLE_DIRSYNC : lone c168_SQLITE_DISABLE_DIRSYNC }
{ one @r_c156_DisableFeatures.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c162_SQLITE_DISABLE_LFS extends c1_IMeasurable
{}
{ one @r_c162_SQLITE_DISABLE_LFS.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c168_SQLITE_DISABLE_DIRSYNC extends c1_IMeasurable
{}
{ one @r_c168_SQLITE_DISABLE_DIRSYNC.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c174_OmitFeatures extends c1_IMeasurable
{ r_c180_SQLITE_OMIT_ALTERTABLE : lone c180_SQLITE_OMIT_ALTERTABLE
, r_c187_SQLITE_OMIT_ANALYZE : lone c187_SQLITE_OMIT_ANALYZE
, r_c194_SQLITE_OMIT_ATTACH : lone c194_SQLITE_OMIT_ATTACH
, r_c201_SQLITE_OMIT_AUTHORIZATION : lone c201_SQLITE_OMIT_AUTHORIZATION
, r_c208_SQLITE_OMIT_AUTOINCREMENT : lone c208_SQLITE_OMIT_AUTOINCREMENT
, r_c215_SQLITE_OMIT_AUTOMATIC_INDEX : lone c215_SQLITE_OMIT_AUTOMATIC_INDEX
, r_c222_SQLITE_OMIT_AUTOINIT : lone c222_SQLITE_OMIT_AUTOINIT
, r_c228_SQLITE_OMIT_AUTOVACUUM : lone c228_SQLITE_OMIT_AUTOVACUUM
, r_c235_SQLITE_OMIT_BETWEEN_OPTIMIZATION : lone c235_SQLITE_OMIT_BETWEEN_OPTIMIZATION
, r_c241_SQLITE_OMIT_BLOB_LITERAL : lone c241_SQLITE_OMIT_BLOB_LITERAL
, r_c248_SQLITE_OMIT_BTREECOUNT : lone c248_SQLITE_OMIT_BTREECOUNT
, r_c255_SQLITE_OMIT_BUILTIN_TEST : lone c255_SQLITE_OMIT_BUILTIN_TEST
, r_c262_SQLITE_OMIT_CAST : lone c262_SQLITE_OMIT_CAST
, r_c269_SQLITE_OMIT_CHECK : lone c269_SQLITE_OMIT_CHECK
, r_c276_SQLITE_OMIT_COMPILEOPTION_DIAGS : lone c276_SQLITE_OMIT_COMPILEOPTION_DIAGS
, r_c283_SQLITE_OMIT_COMPLETE : lone c283_SQLITE_OMIT_COMPLETE
, r_c290_SQLITE_OMIT_COMPOUND_SELECT : lone c290_SQLITE_OMIT_COMPOUND_SELECT
, r_c297_SQLITE_OMIT_CONFLICT_CLAUSE : lone c297_SQLITE_OMIT_CONFLICT_CLAUSE
, r_c303_SQLITE_OMIT_DATETIME_FUNCS : lone c303_SQLITE_OMIT_DATETIME_FUNCS
, r_c310_SQLITE_OMIT_DECLTYPE : lone c310_SQLITE_OMIT_DECLTYPE
, r_c319_SQLITE_OMIT_DEPRECATED : lone c319_SQLITE_OMIT_DEPRECATED
, r_c326_SQLITE_OMIT_EXPLAIN : lone c326_SQLITE_OMIT_EXPLAIN
, r_c333_SQLITE_OMIT_FLAG_PRAGMAS : lone c333_SQLITE_OMIT_FLAG_PRAGMAS
, r_c340_SQLITE_OMIT_FLOATING_POINT : lone c340_SQLITE_OMIT_FLOATING_POINT
, r_c347_SQLITE_OMIT_FOREIGN_KEY : lone c347_SQLITE_OMIT_FOREIGN_KEY
, r_c354_SQLITE_OMIT_GET_TABLE : lone c354_SQLITE_OMIT_GET_TABLE
, r_c361_SQLITE_OMIT_INCRBLOB : lone c361_SQLITE_OMIT_INCRBLOB
, r_c368_SQLITE_OMIT_INTEGRITY_CHECK : lone c368_SQLITE_OMIT_INTEGRITY_CHECK
, r_c375_SQLITE_OMIT_LIKE_OPTIMIZATION : lone c375_SQLITE_OMIT_LIKE_OPTIMIZATION
, r_c382_SQLITE_OMIT_LOAD_EXTENSION : lone c382_SQLITE_OMIT_LOAD_EXTENSION
, r_c389_SQLITE_OMIT_LOCALTIME : lone c389_SQLITE_OMIT_LOCALTIME
, r_c396_SQLITE_OMIT_LOOKASIDE : lone c396_SQLITE_OMIT_LOOKASIDE
, r_c403_SQLITE_OMIT_MEMORYDB : lone c403_SQLITE_OMIT_MEMORYDB
, r_c410_SQLITE_OMIT_OR_OPTIMIZATION : lone c410_SQLITE_OMIT_OR_OPTIMIZATION
, r_c417_SQLITE_OMIT_PAGER_PRAGMAS : lone c417_SQLITE_OMIT_PAGER_PRAGMAS
, r_c424_SQLITE_OMIT_PRAGMA : lone c424_SQLITE_OMIT_PRAGMA
, r_c431_SQLITE_OMIT_PROGRESS_CALLBACK : lone c431_SQLITE_OMIT_PROGRESS_CALLBACK
, r_c438_SQLITE_OMIT_QUICKBALANCE : lone c438_SQLITE_OMIT_QUICKBALANCE
, r_c445_SQLITE_OMIT_REINDEX : lone c445_SQLITE_OMIT_REINDEX
, r_c452_SQLITE_OMIT_SCHEMA_PRAGMAS : lone c452_SQLITE_OMIT_SCHEMA_PRAGMAS
, r_c459_SQLITE_OMIT_SCHEMA_VERSION_PRAGMAS : lone c459_SQLITE_OMIT_SCHEMA_VERSION_PRAGMAS
, r_c466_SQLITE_OMIT_SHARED_CACHE : lone c466_SQLITE_OMIT_SHARED_CACHE
, r_c473_SQLITE_OMIT_SUBQUERY : lone c473_SQLITE_OMIT_SUBQUERY
, r_c480_SQLITE_OMIT_TCL_VARIABLE : lone c480_SQLITE_OMIT_TCL_VARIABLE
, r_c486_SQLITE_OMIT_TEMPDB : lone c486_SQLITE_OMIT_TEMPDB
, r_c492_SQLITE_OMIT_TRACE : lone c492_SQLITE_OMIT_TRACE
, r_c499_SQLITE_OMIT_TRIGGER : lone c499_SQLITE_OMIT_TRIGGER
, r_c506_SQLITE_OMIT_TRUNCATE_OPTIMIZATION : lone c506_SQLITE_OMIT_TRUNCATE_OPTIMIZATION
, r_c512_SQLITE_OMIT_UTF16 : lone c512_SQLITE_OMIT_UTF16
, r_c519_SQLITE_OMIT_VACUUM : lone c519_SQLITE_OMIT_VACUUM
, r_c526_SQLITE_OMIT_VIEW : lone c526_SQLITE_OMIT_VIEW
, r_c533_SQLITE_OMIT_VIRTUALTABLE : lone c533_SQLITE_OMIT_VIRTUALTABLE
, r_c540_SQLITE_OMIT_WAL : lone c540_SQLITE_OMIT_WAL
, r_c547_SQLITE_OMIT_XFER_OPT : lone c547_SQLITE_OMIT_XFER_OPT }
{ one @r_c174_OmitFeatures.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c180_SQLITE_OMIT_ALTERTABLE extends c1_IMeasurable
{}
{ one @r_c180_SQLITE_OMIT_ALTERTABLE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-7) }

sig c187_SQLITE_OMIT_ANALYZE extends c1_IMeasurable
{}
{ one @r_c187_SQLITE_OMIT_ANALYZE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-5) }

sig c194_SQLITE_OMIT_ATTACH extends c1_IMeasurable
{}
{ one @r_c194_SQLITE_OMIT_ATTACH.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-8) }

sig c201_SQLITE_OMIT_AUTHORIZATION extends c1_IMeasurable
{}
{ one @r_c201_SQLITE_OMIT_AUTHORIZATION.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-5) }

sig c208_SQLITE_OMIT_AUTOINCREMENT extends c1_IMeasurable
{}
{ one @r_c208_SQLITE_OMIT_AUTOINCREMENT.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-3) }

sig c215_SQLITE_OMIT_AUTOMATIC_INDEX extends c1_IMeasurable
{}
{ one @r_c215_SQLITE_OMIT_AUTOMATIC_INDEX.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-4) }

sig c222_SQLITE_OMIT_AUTOINIT extends c1_IMeasurable
{}
{ one @r_c222_SQLITE_OMIT_AUTOINIT.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c228_SQLITE_OMIT_AUTOVACUUM extends c1_IMeasurable
{}
{ one @r_c228_SQLITE_OMIT_AUTOVACUUM.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-14) }

sig c235_SQLITE_OMIT_BETWEEN_OPTIMIZATION extends c1_IMeasurable
{}
{ one @r_c235_SQLITE_OMIT_BETWEEN_OPTIMIZATION.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c241_SQLITE_OMIT_BLOB_LITERAL extends c1_IMeasurable
{}
{ one @r_c241_SQLITE_OMIT_BLOB_LITERAL.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c248_SQLITE_OMIT_BTREECOUNT extends c1_IMeasurable
{}
{ one @r_c248_SQLITE_OMIT_BTREECOUNT.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-2) }

sig c255_SQLITE_OMIT_BUILTIN_TEST extends c1_IMeasurable
{}
{ one @r_c255_SQLITE_OMIT_BUILTIN_TEST.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-2) }

sig c262_SQLITE_OMIT_CAST extends c1_IMeasurable
{}
{ one @r_c262_SQLITE_OMIT_CAST.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c269_SQLITE_OMIT_CHECK extends c1_IMeasurable
{}
{ one @r_c269_SQLITE_OMIT_CHECK.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c276_SQLITE_OMIT_COMPILEOPTION_DIAGS extends c1_IMeasurable
{}
{ one @r_c276_SQLITE_OMIT_COMPILEOPTION_DIAGS.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c283_SQLITE_OMIT_COMPLETE extends c1_IMeasurable
{}
{ one @r_c283_SQLITE_OMIT_COMPLETE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-888) }

sig c290_SQLITE_OMIT_COMPOUND_SELECT extends c1_IMeasurable
{}
{ one @r_c290_SQLITE_OMIT_COMPOUND_SELECT.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-10) }

sig c297_SQLITE_OMIT_CONFLICT_CLAUSE extends c1_IMeasurable
{}
{ one @r_c297_SQLITE_OMIT_CONFLICT_CLAUSE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c303_SQLITE_OMIT_DATETIME_FUNCS extends c1_IMeasurable
{}
{ one @r_c303_SQLITE_OMIT_DATETIME_FUNCS.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-10) }

sig c310_SQLITE_OMIT_DECLTYPE extends c1_IMeasurable
{}
{ one @r_c310_SQLITE_OMIT_DECLTYPE.this
  no (((this.~@r_c310_SQLITE_OMIT_DECLTYPE).~@r_c174_OmitFeatures).@r_c64_EnableFeatures).@r_c76_SQLITE_ENABLE_COLUMN_METADATA
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c319_SQLITE_OMIT_DEPRECATED extends c1_IMeasurable
{}
{ one @r_c319_SQLITE_OMIT_DEPRECATED.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c326_SQLITE_OMIT_EXPLAIN extends c1_IMeasurable
{}
{ one @r_c326_SQLITE_OMIT_EXPLAIN.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-10) }

sig c333_SQLITE_OMIT_FLAG_PRAGMAS extends c1_IMeasurable
{}
{ one @r_c333_SQLITE_OMIT_FLAG_PRAGMAS.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c340_SQLITE_OMIT_FLOATING_POINT extends c1_IMeasurable
{}
{ one @r_c340_SQLITE_OMIT_FLOATING_POINT.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-18) }

sig c347_SQLITE_OMIT_FOREIGN_KEY extends c1_IMeasurable
{}
{ one @r_c347_SQLITE_OMIT_FOREIGN_KEY.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-15) }

sig c354_SQLITE_OMIT_GET_TABLE extends c1_IMeasurable
{}
{ one @r_c354_SQLITE_OMIT_GET_TABLE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-3) }

sig c361_SQLITE_OMIT_INCRBLOB extends c1_IMeasurable
{}
{ one @r_c361_SQLITE_OMIT_INCRBLOB.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-7) }

sig c368_SQLITE_OMIT_INTEGRITY_CHECK extends c1_IMeasurable
{}
{ one @r_c368_SQLITE_OMIT_INTEGRITY_CHECK.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-9) }

sig c375_SQLITE_OMIT_LIKE_OPTIMIZATION extends c1_IMeasurable
{}
{ one @r_c375_SQLITE_OMIT_LIKE_OPTIMIZATION.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-2) }

sig c382_SQLITE_OMIT_LOAD_EXTENSION extends c1_IMeasurable
{}
{ one @r_c382_SQLITE_OMIT_LOAD_EXTENSION.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-3) }

sig c389_SQLITE_OMIT_LOCALTIME extends c1_IMeasurable
{}
{ one @r_c389_SQLITE_OMIT_LOCALTIME.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c396_SQLITE_OMIT_LOOKASIDE extends c1_IMeasurable
{}
{ one @r_c396_SQLITE_OMIT_LOOKASIDE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c403_SQLITE_OMIT_MEMORYDB extends c1_IMeasurable
{}
{ one @r_c403_SQLITE_OMIT_MEMORYDB.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-2) }

sig c410_SQLITE_OMIT_OR_OPTIMIZATION extends c1_IMeasurable
{}
{ one @r_c410_SQLITE_OMIT_OR_OPTIMIZATION.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-5) }

sig c417_SQLITE_OMIT_PAGER_PRAGMAS extends c1_IMeasurable
{}
{ one @r_c417_SQLITE_OMIT_PAGER_PRAGMAS.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-5) }

sig c424_SQLITE_OMIT_PRAGMA extends c1_IMeasurable
{}
{ one @r_c424_SQLITE_OMIT_PRAGMA.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-16) }

sig c431_SQLITE_OMIT_PROGRESS_CALLBACK extends c1_IMeasurable
{}
{ one @r_c431_SQLITE_OMIT_PROGRESS_CALLBACK.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c438_SQLITE_OMIT_QUICKBALANCE extends c1_IMeasurable
{}
{ one @r_c438_SQLITE_OMIT_QUICKBALANCE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c445_SQLITE_OMIT_REINDEX extends c1_IMeasurable
{}
{ one @r_c445_SQLITE_OMIT_REINDEX.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c452_SQLITE_OMIT_SCHEMA_PRAGMAS extends c1_IMeasurable
{}
{ one @r_c452_SQLITE_OMIT_SCHEMA_PRAGMAS.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-2) }

sig c459_SQLITE_OMIT_SCHEMA_VERSION_PRAGMAS extends c1_IMeasurable
{}
{ one @r_c459_SQLITE_OMIT_SCHEMA_VERSION_PRAGMAS.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-1) }

sig c466_SQLITE_OMIT_SHARED_CACHE extends c1_IMeasurable
{}
{ one @r_c466_SQLITE_OMIT_SHARED_CACHE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-10) }

sig c473_SQLITE_OMIT_SUBQUERY extends c1_IMeasurable
{}
{ one @r_c473_SQLITE_OMIT_SUBQUERY.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-11) }

sig c480_SQLITE_OMIT_TCL_VARIABLE extends c1_IMeasurable
{}
{ one @r_c480_SQLITE_OMIT_TCL_VARIABLE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c486_SQLITE_OMIT_TEMPDB extends c1_IMeasurable
{}
{ one @r_c486_SQLITE_OMIT_TEMPDB.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c492_SQLITE_OMIT_TRACE extends c1_IMeasurable
{}
{ one @r_c492_SQLITE_OMIT_TRACE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-3) }

sig c499_SQLITE_OMIT_TRIGGER extends c1_IMeasurable
{}
{ one @r_c499_SQLITE_OMIT_TRIGGER.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-27) }

sig c506_SQLITE_OMIT_TRUNCATE_OPTIMIZATION extends c1_IMeasurable
{}
{ one @r_c506_SQLITE_OMIT_TRUNCATE_OPTIMIZATION.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 0 }

sig c512_SQLITE_OMIT_UTF16 extends c1_IMeasurable
{}
{ one @r_c512_SQLITE_OMIT_UTF16.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-8) }

sig c519_SQLITE_OMIT_VACUUM extends c1_IMeasurable
{}
{ one @r_c519_SQLITE_OMIT_VACUUM.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-4) }

sig c526_SQLITE_OMIT_VIEW extends c1_IMeasurable
{}
{ one @r_c526_SQLITE_OMIT_VIEW.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-3) }

sig c533_SQLITE_OMIT_VIRTUALTABLE extends c1_IMeasurable
{}
{ one @r_c533_SQLITE_OMIT_VIRTUALTABLE.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-20) }

sig c540_SQLITE_OMIT_WAL extends c1_IMeasurable
{}
{ one @r_c540_SQLITE_OMIT_WAL.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-30) }

sig c547_SQLITE_OMIT_XFER_OPT extends c1_IMeasurable
{}
{ one @r_c547_SQLITE_OMIT_XFER_OPT.this
  (this.@r_c2_footprint.@c2_footprint_ref) = (-3) }

sig c554_SQLITE_DEBUG extends c1_IMeasurable
{}
{ one @r_c554_SQLITE_DEBUG.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 9 }

sig c560_SQLITE_MEMDEBUG extends c1_IMeasurable
{}
{ one @r_c560_SQLITE_MEMDEBUG.this
  (this.@r_c2_footprint.@c2_footprint_ref) = 2 }

sig c566_total_footprint
{ c566_total_footprint_ref : one Int }
{ one @r_c566_total_footprint.this
  this.@c566_total_footprint_ref = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((this.~@r_c566_total_footprint).@r_c4_OperatingSystemCharacteristics).@r_c2_footprint.@c2_footprint_ref).add[((((this.~@r_c566_total_footprint).@r_c4_OperatingSystemCharacteristics).@r_c10_SQLITE_4_BYTE_ALIGNED_MALLOC).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c4_OperatingSystemCharacteristics).@r_c16_SQLITE_CASE_SENSITIVE_LIKE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c4_OperatingSystemCharacteristics).@r_c22_SQLITE_HAVE_ISNAN).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c4_OperatingSystemCharacteristics).@r_c28_SQLITE_SECURE_DELETE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c4_OperatingSystemCharacteristics).@r_c34_ChooseSQLITE_TEMP_STORE).@r_c2_footprint.@c2_footprint_ref)]).add[(((((this.~@r_c566_total_footprint).@r_c4_OperatingSystemCharacteristics).@r_c34_ChooseSQLITE_TEMP_STORE).@r_c40_SQLITE_TEMP_STORE_EQ_0).@r_c2_footprint.@c2_footprint_ref)]).add[(((((this.~@r_c566_total_footprint).@r_c4_OperatingSystemCharacteristics).@r_c34_ChooseSQLITE_TEMP_STORE).@r_c46_SQLITE_TEMP_STORE_EQ_1).@r_c2_footprint.@c2_footprint_ref)]).add[(((((this.~@r_c566_total_footprint).@r_c4_OperatingSystemCharacteristics).@r_c34_ChooseSQLITE_TEMP_STORE).@r_c52_SQLITE_TEMP_STORE_EQ_2).@r_c2_footprint.@c2_footprint_ref)]).add[(((((this.~@r_c566_total_footprint).@r_c4_OperatingSystemCharacteristics).@r_c34_ChooseSQLITE_TEMP_STORE).@r_c58_SQLITE_TEMP_STORE_EQ_3).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c70_SQLITE_ENABLE_ATOMIC_WRITE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c76_SQLITE_ENABLE_COLUMN_METADATA).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c84_SQLITE_ENABLE_FTS3).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c90_SQLITE_ENABLE_FTS3_PARENTHESIS).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c96_SQLITE_ENABLE_MEMORY_MANAGEMENT).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c102_ChooseMemSys).@r_c2_footprint.@c2_footprint_ref)]).add[(((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c102_ChooseMemSys).@r_c108_SQLITE_ENABLE_MEMSYS3).@r_c2_footprint.@c2_footprint_ref)]).add[(((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c102_ChooseMemSys).@r_c114_SQLITE_ENABLE_MEMSYS5).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c120_SQLITE_ENABLE_RTREE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c126_SQLITE_ENABLE_STAT2).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c132_SQLITE_ENABLE_UPDATE_DELETE_LIMIT).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c138_SQLITE_ENABLE_UNLOCK_NOTIFY).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c144_SQLITE_SOUNDEX).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c64_EnableFeatures).@r_c150_YYTRACKMAXSTACKDEPTH).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c566_total_footprint).@r_c156_DisableFeatures).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c156_DisableFeatures).@r_c162_SQLITE_DISABLE_LFS).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c156_DisableFeatures).@r_c168_SQLITE_DISABLE_DIRSYNC).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c180_SQLITE_OMIT_ALTERTABLE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c187_SQLITE_OMIT_ANALYZE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c194_SQLITE_OMIT_ATTACH).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c201_SQLITE_OMIT_AUTHORIZATION).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c208_SQLITE_OMIT_AUTOINCREMENT).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c215_SQLITE_OMIT_AUTOMATIC_INDEX).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c222_SQLITE_OMIT_AUTOINIT).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c228_SQLITE_OMIT_AUTOVACUUM).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c235_SQLITE_OMIT_BETWEEN_OPTIMIZATION).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c241_SQLITE_OMIT_BLOB_LITERAL).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c248_SQLITE_OMIT_BTREECOUNT).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c255_SQLITE_OMIT_BUILTIN_TEST).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c262_SQLITE_OMIT_CAST).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c269_SQLITE_OMIT_CHECK).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c276_SQLITE_OMIT_COMPILEOPTION_DIAGS).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c283_SQLITE_OMIT_COMPLETE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c290_SQLITE_OMIT_COMPOUND_SELECT).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c297_SQLITE_OMIT_CONFLICT_CLAUSE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c303_SQLITE_OMIT_DATETIME_FUNCS).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c310_SQLITE_OMIT_DECLTYPE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c319_SQLITE_OMIT_DEPRECATED).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c326_SQLITE_OMIT_EXPLAIN).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c333_SQLITE_OMIT_FLAG_PRAGMAS).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c340_SQLITE_OMIT_FLOATING_POINT).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c347_SQLITE_OMIT_FOREIGN_KEY).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c354_SQLITE_OMIT_GET_TABLE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c361_SQLITE_OMIT_INCRBLOB).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c368_SQLITE_OMIT_INTEGRITY_CHECK).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c375_SQLITE_OMIT_LIKE_OPTIMIZATION).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c382_SQLITE_OMIT_LOAD_EXTENSION).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c389_SQLITE_OMIT_LOCALTIME).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c396_SQLITE_OMIT_LOOKASIDE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c403_SQLITE_OMIT_MEMORYDB).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c410_SQLITE_OMIT_OR_OPTIMIZATION).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c417_SQLITE_OMIT_PAGER_PRAGMAS).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c424_SQLITE_OMIT_PRAGMA).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c431_SQLITE_OMIT_PROGRESS_CALLBACK).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c438_SQLITE_OMIT_QUICKBALANCE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c445_SQLITE_OMIT_REINDEX).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c452_SQLITE_OMIT_SCHEMA_PRAGMAS).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c459_SQLITE_OMIT_SCHEMA_VERSION_PRAGMAS).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c466_SQLITE_OMIT_SHARED_CACHE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c473_SQLITE_OMIT_SUBQUERY).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c480_SQLITE_OMIT_TCL_VARIABLE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c486_SQLITE_OMIT_TEMPDB).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c492_SQLITE_OMIT_TRACE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c499_SQLITE_OMIT_TRIGGER).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c506_SQLITE_OMIT_TRUNCATE_OPTIMIZATION).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c512_SQLITE_OMIT_UTF16).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c519_SQLITE_OMIT_VACUUM).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c526_SQLITE_OMIT_VIEW).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c533_SQLITE_OMIT_VIRTUALTABLE).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c540_SQLITE_OMIT_WAL).@r_c2_footprint.@c2_footprint_ref)]).add[((((this.~@r_c566_total_footprint).@r_c174_OmitFeatures).@r_c547_SQLITE_OMIT_XFER_OPT).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c566_total_footprint).@r_c554_SQLITE_DEBUG).@r_c2_footprint.@c2_footprint_ref)]).add[(((this.~@r_c566_total_footprint).@r_c560_SQLITE_MEMDEBUG).@r_c2_footprint.@c2_footprint_ref)]) }

one sig c908_simpleConfig extends c3_SQLite
{}
{ ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((some this.@r_c4_OperatingSystemCharacteristics) && (no (this.@r_c4_OperatingSystemCharacteristics).@r_c28_SQLITE_SECURE_DELETE)) && (some (this.@r_c4_OperatingSystemCharacteristics).@r_c34_ChooseSQLITE_TEMP_STORE)) && (no ((this.@r_c4_OperatingSystemCharacteristics).@r_c34_ChooseSQLITE_TEMP_STORE).@r_c40_SQLITE_TEMP_STORE_EQ_0)) && (no ((this.@r_c4_OperatingSystemCharacteristics).@r_c34_ChooseSQLITE_TEMP_STORE).@r_c46_SQLITE_TEMP_STORE_EQ_1)) && (no ((this.@r_c4_OperatingSystemCharacteristics).@r_c34_ChooseSQLITE_TEMP_STORE).@r_c52_SQLITE_TEMP_STORE_EQ_2)) && (some ((this.@r_c4_OperatingSystemCharacteristics).@r_c34_ChooseSQLITE_TEMP_STORE).@r_c58_SQLITE_TEMP_STORE_EQ_3)) && (some (this.@r_c64_EnableFeatures).@r_c70_SQLITE_ENABLE_ATOMIC_WRITE)) && (no (this.@r_c64_EnableFeatures).@r_c84_SQLITE_ENABLE_FTS3)) && (some (this.@r_c64_EnableFeatures).@r_c90_SQLITE_ENABLE_FTS3_PARENTHESIS)) && (no (this.@r_c64_EnableFeatures).@r_c102_ChooseMemSys)) && (no ((this.@r_c64_EnableFeatures).@r_c102_ChooseMemSys).@r_c108_SQLITE_ENABLE_MEMSYS3)) && (some (this.@r_c64_EnableFeatures).@r_c120_SQLITE_ENABLE_RTREE)) && (no (this.@r_c64_EnableFeatures).@r_c126_SQLITE_ENABLE_STAT2)) && (some (this.@r_c64_EnableFeatures).@r_c132_SQLITE_ENABLE_UPDATE_DELETE_LIMIT)) && (no (this.@r_c64_EnableFeatures).@r_c144_SQLITE_SOUNDEX)) && (some (this.@r_c64_EnableFeatures).@r_c150_YYTRACKMAXSTACKDEPTH)) && (some this.@r_c156_DisableFeatures)) && (some (this.@r_c174_OmitFeatures).@r_c187_SQLITE_OMIT_ANALYZE)) && (some (this.@r_c174_OmitFeatures).@r_c208_SQLITE_OMIT_AUTOINCREMENT)) && (no (this.@r_c174_OmitFeatures).@r_c222_SQLITE_OMIT_AUTOINIT)) && (no (this.@r_c174_OmitFeatures).@r_c228_SQLITE_OMIT_AUTOVACUUM)) && (no (this.@r_c174_OmitFeatures).@r_c241_SQLITE_OMIT_BLOB_LITERAL)) && (some (this.@r_c174_OmitFeatures).@r_c248_SQLITE_OMIT_BTREECOUNT)) && (some (this.@r_c174_OmitFeatures).@r_c255_SQLITE_OMIT_BUILTIN_TEST)) && (no (this.@r_c174_OmitFeatures).@r_c269_SQLITE_OMIT_CHECK)) && (some (this.@r_c174_OmitFeatures).@r_c276_SQLITE_OMIT_COMPILEOPTION_DIAGS)) && (no (this.@r_c174_OmitFeatures).@r_c283_SQLITE_OMIT_COMPLETE)) && (some (this.@r_c174_OmitFeatures).@r_c290_SQLITE_OMIT_COMPOUND_SELECT)) && (some (this.@r_c174_OmitFeatures).@r_c297_SQLITE_OMIT_CONFLICT_CLAUSE)) && (no (this.@r_c174_OmitFeatures).@r_c303_SQLITE_OMIT_DATETIME_FUNCS)) && (no (this.@r_c174_OmitFeatures).@r_c310_SQLITE_OMIT_DECLTYPE)) && (some (this.@r_c174_OmitFeatures).@r_c319_SQLITE_OMIT_DEPRECATED)) && (no (this.@r_c174_OmitFeatures).@r_c333_SQLITE_OMIT_FLAG_PRAGMAS)) && (no (this.@r_c174_OmitFeatures).@r_c340_SQLITE_OMIT_FLOATING_POINT)) && (no (this.@r_c174_OmitFeatures).@r_c347_SQLITE_OMIT_FOREIGN_KEY)) && (some (this.@r_c174_OmitFeatures).@r_c354_SQLITE_OMIT_GET_TABLE)) && (some (this.@r_c174_OmitFeatures).@r_c361_SQLITE_OMIT_INCRBLOB)) && (some (this.@r_c174_OmitFeatures).@r_c368_SQLITE_OMIT_INTEGRITY_CHECK)) && (no (this.@r_c174_OmitFeatures).@r_c375_SQLITE_OMIT_LIKE_OPTIMIZATION)) && (some (this.@r_c174_OmitFeatures).@r_c382_SQLITE_OMIT_LOAD_EXTENSION)) && (some (this.@r_c174_OmitFeatures).@r_c389_SQLITE_OMIT_LOCALTIME)) && (some (this.@r_c174_OmitFeatures).@r_c403_SQLITE_OMIT_MEMORYDB)) && (some (this.@r_c174_OmitFeatures).@r_c410_SQLITE_OMIT_OR_OPTIMIZATION)) && (no (this.@r_c174_OmitFeatures).@r_c424_SQLITE_OMIT_PRAGMA)) && (some (this.@r_c174_OmitFeatures).@r_c431_SQLITE_OMIT_PROGRESS_CALLBACK)) && (some (this.@r_c174_OmitFeatures).@r_c438_SQLITE_OMIT_QUICKBALANCE)) && (some (this.@r_c174_OmitFeatures).@r_c459_SQLITE_OMIT_SCHEMA_VERSION_PRAGMAS)) && (some (this.@r_c174_OmitFeatures).@r_c466_SQLITE_OMIT_SHARED_CACHE)) && (no (this.@r_c174_OmitFeatures).@r_c480_SQLITE_OMIT_TCL_VARIABLE)) && (no (this.@r_c174_OmitFeatures).@r_c486_SQLITE_OMIT_TEMPDB)) && (some (this.@r_c174_OmitFeatures).@r_c492_SQLITE_OMIT_TRACE)) && (some (this.@r_c174_OmitFeatures).@r_c499_SQLITE_OMIT_TRIGGER)) && (some (this.@r_c174_OmitFeatures).@r_c506_SQLITE_OMIT_TRUNCATE_OPTIMIZATION)) && (some (this.@r_c174_OmitFeatures).@r_c519_SQLITE_OMIT_VACUUM)) && (some (this.@r_c174_OmitFeatures).@r_c526_SQLITE_OMIT_VIEW)) && (no (this.@r_c174_OmitFeatures).@r_c533_SQLITE_OMIT_VIRTUALTABLE)) && (no (this.@r_c174_OmitFeatures).@r_c540_SQLITE_OMIT_WAL)) && (some (this.@r_c174_OmitFeatures).@r_c547_SQLITE_OMIT_XFER_OPT) }

objectives o_global {
minimize c908_simpleConfig.@r_c566_total_footprint.@c566_total_footprint_ref 
}