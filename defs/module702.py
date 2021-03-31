#
# Generate By: dol2asm
# Module: 702
#

# Libraries
LIBRARIES = [
	"d/a/d_a_passer_mng",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_passer_mng",
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
	{'addr':0x80D456A0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D456CC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D456F8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D45718,'size':32,'pad':0,'label':"daPasserMng_Execute__FP13daPasserMng_c",'name':"daPasserMng_Execute__FP13daPasserMng_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D45738,'size':580,'pad':0,'label':"execute__13daPasserMng_cFv",'name':"execute__13daPasserMng_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4597C,'size':1176,'pad':0,'label':"getPasserParam__13daPasserMng_cFv",'name':"getPasserParam__13daPasserMng_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D45E14,'size':2280,'pad':0,'label':"getLuggageParamHigh__13daPasserMng_cFUl",'name':"getLuggageParamHigh__13daPasserMng_cFUl",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D466FC,'size':8,'pad':0,'label':"daPasserMng_IsDelete__FP13daPasserMng_c",'name':"daPasserMng_IsDelete__FP13daPasserMng_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D46704,'size':68,'pad':0,'label':"daPasserMng_Delete__FP13daPasserMng_c",'name':"daPasserMng_Delete__FP13daPasserMng_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D46748,'size':32,'pad':0,'label':"daPasserMng_Create__FP10fopAc_ac_c",'name':"daPasserMng_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D46768,'size':88,'pad':0,'label':"create__13daPasserMng_cFv",'name':"create__13daPasserMng_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D467C0,'size':988,'pad':0,'label':"create_init__13daPasserMng_cFv",'name':"create_init__13daPasserMng_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D46B9C,'size':124,'pad':0,'label':"func_80D46B9C",'name':"cLib_getRndValue<i>__Fii",'lib':-1,'tu':3,'section':0,'class_template':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D46C18,'size':4,'pad':0,'label':"data_80D46C18",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D46C1C,'size':4,'pad':0,'label':"data_80D46C1C",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D46C20,'size':32,'pad':0,'label':"groupA",'name':"groupA",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D46C40,'size':36,'pad':0,'label':"groupB",'name':"groupB",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D46C64,'size':36,'pad':0,'label':"groupC",'name':"groupC",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D46C88,'size':32,'pad':0,'label':"groupD",'name':"groupD",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D46CA8,'size':8,'pad':0,'label':"lit_4430",'name':"@4430",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D46CB0,'size':16,'pad':0,'label':"mGroupTbl__13daPasserMng_c",'name':"mGroupTbl__13daPasserMng_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D46CC0,'size':120,'pad':0,'label':"lit_4134",'name':"@4134",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D46D38,'size':120,'pad':0,'label':"lit_4305",'name':"@4305",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D46DB0,'size':32,'pad':0,'label':"l_daPasserMng_Method",'name':"l_daPasserMng_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D46DD0,'size':48,'pad':0,'label':"g_profile_PASSER_MNG",'name':"g_profile_PASSER_MNG",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daPasserMng_Execute__FP13daPasserMng_c":3,
	"execute__13daPasserMng_cFv":4,
	"getPasserParam__13daPasserMng_cFv":5,
	"getLuggageParamHigh__13daPasserMng_cFUl":6,
	"daPasserMng_IsDelete__FP13daPasserMng_c":7,
	"daPasserMng_Delete__FP13daPasserMng_c":8,
	"daPasserMng_Create__FP10fopAc_ac_c":9,
	"create__13daPasserMng_cFv":10,
	"create_init__13daPasserMng_cFv":11,
	"func_80D46B9C":12,
	"data_80D46C18":13,
	"data_80D46C1C":14,
	"groupA":15,
	"groupB":16,
	"groupC":17,
	"groupD":18,
	"lit_4430":19,
	"mGroupTbl__13daPasserMng_c":20,
	"lit_4134":21,
	"lit_4305":22,
	"l_daPasserMng_Method":23,
	"g_profile_PASSER_MNG":24,
}

