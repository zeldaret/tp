#
# Generate By: dol2asm
# Module: 92
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_cboard",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_cboard",
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
	{'addr':0x8057B8E0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057B90C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057B938,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057B958,'size':32,'pad':0,'label':"initBaseMtx__12daObjBoard_cFv",'name':"initBaseMtx__12daObjBoard_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057B978,'size':80,'pad':0,'label':"setBaseMtx__12daObjBoard_cFv",'name':"setBaseMtx__12daObjBoard_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057B9C8,'size':168,'pad':0,'label':"Create__12daObjBoard_cFv",'name':"Create__12daObjBoard_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057BA70,'size':8,'pad':0,'label':"CreateHeap__12daObjBoard_cFv",'name':"CreateHeap__12daObjBoard_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8057BA78,'size':252,'pad':0,'label':"create1st__12daObjBoard_cFv",'name':"create1st__12daObjBoard_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057BB74,'size':332,'pad':0,'label':"Execute__12daObjBoard_cFPPA3_A4_f",'name':"Execute__12daObjBoard_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057BCC0,'size':8,'pad':0,'label':"Draw__12daObjBoard_cFv",'name':"Draw__12daObjBoard_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8057BCC8,'size':52,'pad':0,'label':"Delete__12daObjBoard_cFv",'name':"Delete__12daObjBoard_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057BCFC,'size':96,'pad':0,'label':"daObjBoard_create1st__FP12daObjBoard_c",'name':"daObjBoard_create1st__FP12daObjBoard_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057BD5C,'size':32,'pad':0,'label':"daObjBoard_MoveBGDelete__FP12daObjBoard_c",'name':"daObjBoard_MoveBGDelete__FP12daObjBoard_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057BD7C,'size':32,'pad':0,'label':"daObjBoard_MoveBGExecute__FP12daObjBoard_c",'name':"daObjBoard_MoveBGExecute__FP12daObjBoard_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057BD9C,'size':44,'pad':0,'label':"daObjBoard_MoveBGDraw__FP12daObjBoard_c",'name':"daObjBoard_MoveBGDraw__FP12daObjBoard_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057BDC8,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8057BDCC,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8057BDD0,'size':4,'pad':0,'label':"lit_3636",'name':"@3636",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8057BDD4,'size':75,'pad':0,'label':"d_a_obj_cboard__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x8057BE20,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8057BE24,'size':20,'pad':0,'label':"l_dzbName",'name':"l_dzbName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8057BE38,'size':24,'pad':0,'label':"l_cull_box",'name':"l_cull_box",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8057BE50,'size':64,'pad':0,'label':"lit_3712",'name':"@3712",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8057BE90,'size':32,'pad':0,'label':"daObjBoard_METHODS",'name':"daObjBoard_METHODS",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8057BEB0,'size':48,'pad':0,'label':"g_profile_Obj_Cboard",'name':"g_profile_Obj_Cboard",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8057BEE0,'size':40,'pad':0,'label':"__vt__12daObjBoard_c",'name':"__vt__12daObjBoard_c",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__12daObjBoard_cFv":3,
	"setBaseMtx__12daObjBoard_cFv":4,
	"Create__12daObjBoard_cFv":5,
	"CreateHeap__12daObjBoard_cFv":6,
	"create1st__12daObjBoard_cFv":7,
	"Execute__12daObjBoard_cFPPA3_A4_f":8,
	"Draw__12daObjBoard_cFv":9,
	"Delete__12daObjBoard_cFv":10,
	"daObjBoard_create1st__FP12daObjBoard_c":11,
	"daObjBoard_MoveBGDelete__FP12daObjBoard_c":12,
	"daObjBoard_MoveBGExecute__FP12daObjBoard_c":13,
	"daObjBoard_MoveBGDraw__FP12daObjBoard_c":14,
	"_ctors":15,
	"_dtors":16,
	"lit_3636":17,
	"d_a_obj_cboard__stringBase0":18,
	"l_arcName":19,
	"l_dzbName":20,
	"l_cull_box":21,
	"lit_3712":22,
	"daObjBoard_METHODS":23,
	"g_profile_Obj_Cboard":24,
	"__vt__12daObjBoard_c":25,
}

