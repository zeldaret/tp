#
# Generate By: dol2asm
# Module: 412
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_bombf",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_bombf",
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
	{'addr':0x80BBA980,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBA9AC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBA9D8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBA9F8,'size':108,'pad':0,'label':"createHeap__12daObjBombf_cFv",'name':"createHeap__12daObjBombf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBAA64,'size':32,'pad':0,'label':"daObjBombf_createHeap__FP10fopAc_ac_c",'name':"daObjBombf_createHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBAA84,'size':280,'pad':0,'label':"create__12daObjBombf_cFv",'name':"create__12daObjBombf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBAB9C,'size':32,'pad':0,'label':"daObjBombf_Create__FP10fopAc_ac_c",'name':"daObjBombf_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBABBC,'size':104,'pad':0,'label':"__dt__12daObjBombf_cFv",'name':"__dt__12daObjBombf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBAC24,'size':40,'pad':0,'label':"daObjBombf_Delete__FP12daObjBombf_c",'name':"daObjBombf_Delete__FP12daObjBombf_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBAC4C,'size':116,'pad':0,'label':"setMatrix__12daObjBombf_cFv",'name':"setMatrix__12daObjBombf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBACC0,'size':280,'pad':0,'label':"execute__12daObjBombf_cFv",'name':"execute__12daObjBombf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBADD8,'size':32,'pad':0,'label':"daObjBombf_Execute__FP12daObjBombf_c",'name':"daObjBombf_Execute__FP12daObjBombf_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBADF8,'size':100,'pad':0,'label':"draw__12daObjBombf_cFv",'name':"draw__12daObjBombf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBAE5C,'size':32,'pad':0,'label':"daObjBombf_Draw__FP12daObjBombf_c",'name':"daObjBombf_Draw__FP12daObjBombf_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BBAE7C,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80BBAE80,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80BBAE84,'size':6,'pad':2,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BBAE8C,'size':4,'pad':0,'label':"lit_3687",'name':"@3687",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BBAE90,'size':4,'pad':0,'label':"lit_3688",'name':"@3688",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BBAE94,'size':4,'pad':0,'label':"lit_3689",'name':"@3689",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BBAE98,'size':4,'pad':0,'label':"lit_3690",'name':"@3690",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BBAE9C,'size':12,'pad':0,'label':"bombOffset",'name':"bombOffset$3727",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BBAEA8,'size':32,'pad':0,'label':"l_daObjBombf_Method",'name':"l_daObjBombf_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BBAEC8,'size':48,'pad':0,'label':"g_profile_Obj_Bombf",'name':"g_profile_Obj_Bombf",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"createHeap__12daObjBombf_cFv":3,
	"daObjBombf_createHeap__FP10fopAc_ac_c":4,
	"create__12daObjBombf_cFv":5,
	"daObjBombf_Create__FP10fopAc_ac_c":6,
	"__dt__12daObjBombf_cFv":7,
	"daObjBombf_Delete__FP12daObjBombf_c":8,
	"setMatrix__12daObjBombf_cFv":9,
	"execute__12daObjBombf_cFv":10,
	"daObjBombf_Execute__FP12daObjBombf_c":11,
	"draw__12daObjBombf_cFv":12,
	"daObjBombf_Draw__FP12daObjBombf_c":13,
	"_ctors":14,
	"_dtors":15,
	"l_arcName":16,
	"lit_3687":17,
	"lit_3688":18,
	"lit_3689":19,
	"lit_3690":20,
	"bombOffset":21,
	"l_daObjBombf_Method":22,
	"g_profile_Obj_Bombf":23,
}

