#
# Generate By: dol2asm
# Module: 29
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_chkpoint",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_chkpoint",
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
	{'addr':0x8048A680,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048A6AC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048A6D8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048A6F8,'size':756,'pad':0,'label':"execute__11daTag_Chk_cFv",'name':"execute__11daTag_Chk_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048A9EC,'size':8,'pad':0,'label':"daTag_Chk_Draw__FP11daTag_Chk_c",'name':"daTag_Chk_Draw__FP11daTag_Chk_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048A9F4,'size':36,'pad':0,'label':"daTag_Chk_Execute__FP11daTag_Chk_c",'name':"daTag_Chk_Execute__FP11daTag_Chk_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048AA18,'size':8,'pad':0,'label':"daTag_Chk_IsDelete__FP11daTag_Chk_c",'name':"daTag_Chk_IsDelete__FP11daTag_Chk_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048AA20,'size':48,'pad':0,'label':"daTag_Chk_Delete__FP11daTag_Chk_c",'name':"daTag_Chk_Delete__FP11daTag_Chk_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048AA50,'size':464,'pad':0,'label':"daTag_Chk_Create__FP10fopAc_ac_c",'name':"daTag_Chk_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048AC20,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8048AC24,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8048AC28,'size':9,'pad':3,'label':"lit_3769",'name':"@3769",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048AC34,'size':4,'pad':0,'label':"lit_3843",'name':"@3843",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048AC38,'size':8,'pad':0,'label':"lit_3844",'name':"@3844",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048AC40,'size':8,'pad':0,'label':"lit_3845",'name':"@3845",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048AC48,'size':8,'pad':0,'label':"lit_3846",'name':"@3846",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048AC50,'size':4,'pad':0,'label':"lit_3925",'name':"@3925",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8048AC54,'size':4,'pad':0,'label':"lit_3926",'name':"@3926",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8048AC58,'size':4,'pad':0,'label':"lit_3927",'name':"@3927",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8048AC5C,'size':4,'pad':0,'label':"lit_3928",'name':"@3928",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8048AC60,'size':8,'pad':0,'label':"lit_3930",'name':"@3930",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048AC68,'size':32,'pad':0,'label':"l_daTag_Chk_Method",'name':"l_daTag_Chk_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048AC88,'size':48,'pad':0,'label':"g_profile_TAG_CHKPOINT",'name':"g_profile_TAG_CHKPOINT",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"execute__11daTag_Chk_cFv":3,
	"daTag_Chk_Draw__FP11daTag_Chk_c":4,
	"daTag_Chk_Execute__FP11daTag_Chk_c":5,
	"daTag_Chk_IsDelete__FP11daTag_Chk_c":6,
	"daTag_Chk_Delete__FP11daTag_Chk_c":7,
	"daTag_Chk_Create__FP10fopAc_ac_c":8,
	"_ctors":9,
	"_dtors":10,
	"lit_3769":11,
	"lit_3843":12,
	"lit_3844":13,
	"lit_3845":14,
	"lit_3846":15,
	"lit_3925":16,
	"lit_3926":17,
	"lit_3927":18,
	"lit_3928":19,
	"lit_3930":20,
	"l_daTag_Chk_Method":21,
	"g_profile_TAG_CHKPOINT":22,
}

