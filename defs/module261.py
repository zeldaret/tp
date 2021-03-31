#
# Generate By: dol2asm
# Module: 261
#

# Libraries
LIBRARIES = [
	"d/a/d_a_guard_mng",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_guard_mng",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".dtors",
	".rodata",
	".data",
]

# Symbols
SYMBOLS = [
	{'addr':0x80837AA0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80837ACC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80837AF8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80837B18,'size':132,'pad':0,'label':"s_sub__FPvPv",'name':"s_sub__FPvPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80837B9C,'size':80,'pad':0,'label':"checkMerchantNum__12daGuardMng_cFv",'name':"checkMerchantNum__12daGuardMng_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80837BEC,'size':128,'pad':0,'label':"checkAppearTag__12daGuardMng_cFP12daTagGuard_c",'name':"checkAppearTag__12daGuardMng_cFP12daTagGuard_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80837C6C,'size':216,'pad':0,'label':"daGuardMng_Execute__FP12daGuardMng_c",'name':"daGuardMng_Execute__FP12daGuardMng_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80837D44,'size':8,'pad':0,'label':"daGuardMng_IsDelete__FP12daGuardMng_c",'name':"daGuardMng_IsDelete__FP12daGuardMng_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80837D4C,'size':48,'pad':0,'label':"daGuardMng_Delete__FP12daGuardMng_c",'name':"daGuardMng_Delete__FP12daGuardMng_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80837D7C,'size':96,'pad':0,'label':"daGuardMng_Create__FP10fopAc_ac_c",'name':"daGuardMng_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80837DDC,'size':4,'pad':0,'label':"data_80837DDC",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80837DE0,'size':4,'pad':0,'label':"data_80837DE0",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80837DE4,'size':8,'pad':0,'label':"data_80837DE4",'name':"mGuardDataTbl$localstatic3$getGuardParam__12daGuardMng_cFv",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80837DEC,'size':4,'pad':0,'label':"lit_3663",'name':"@3663",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80837DF0,'size':32,'pad':0,'label':"l_daGuardMng_Method",'name':"l_daGuardMng_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80837E10,'size':48,'pad':0,'label':"g_profile_GUARD_MNG",'name':"g_profile_GUARD_MNG",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"s_sub__FPvPv":3,
	"checkMerchantNum__12daGuardMng_cFv":4,
	"checkAppearTag__12daGuardMng_cFP12daTagGuard_c":5,
	"daGuardMng_Execute__FP12daGuardMng_c":6,
	"daGuardMng_IsDelete__FP12daGuardMng_c":7,
	"daGuardMng_Delete__FP12daGuardMng_c":8,
	"daGuardMng_Create__FP10fopAc_ac_c":9,
	"data_80837DDC":10,
	"data_80837DE0":11,
	"data_80837DE4":12,
	"lit_3663":13,
	"l_daGuardMng_Method":14,
	"g_profile_GUARD_MNG":15,
}

