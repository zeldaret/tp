#
# Generate By: dol2asm
# Module: 656
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_tgake",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_tgake",
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
	{'addr':0x80D0BBA0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0BBCC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0BBF8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0BC18,'size':60,'pad':0,'label':"initBaseMtx__11daObjGake_cFv",'name':"initBaseMtx__11daObjGake_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0BC54,'size':100,'pad':0,'label':"setBaseMtx__11daObjGake_cFv",'name':"setBaseMtx__11daObjGake_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0BCB8,'size':120,'pad':0,'label':"Create__11daObjGake_cFv",'name':"Create__11daObjGake_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0BD30,'size':112,'pad':0,'label':"CreateHeap__11daObjGake_cFv",'name':"CreateHeap__11daObjGake_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0BDA0,'size':132,'pad':0,'label':"create1st__11daObjGake_cFv",'name':"create1st__11daObjGake_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0BE24,'size':344,'pad':0,'label':"Execute__11daObjGake_cFPPA3_A4_f",'name':"Execute__11daObjGake_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0BF7C,'size':184,'pad':0,'label':"Draw__11daObjGake_cFv",'name':"Draw__11daObjGake_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0C034,'size':52,'pad':0,'label':"Delete__11daObjGake_cFv",'name':"Delete__11daObjGake_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0C068,'size':96,'pad':0,'label':"daObjGake_create1st__FP11daObjGake_c",'name':"daObjGake_create1st__FP11daObjGake_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0C0C8,'size':32,'pad':0,'label':"daObjGake_MoveBGDelete__FP11daObjGake_c",'name':"daObjGake_MoveBGDelete__FP11daObjGake_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0C0E8,'size':32,'pad':0,'label':"daObjGake_MoveBGExecute__FP11daObjGake_c",'name':"daObjGake_MoveBGExecute__FP11daObjGake_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0C108,'size':44,'pad':0,'label':"daObjGake_MoveBGDraw__FP11daObjGake_c",'name':"daObjGake_MoveBGDraw__FP11daObjGake_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0C134,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D0C138,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D0C13C,'size':8,'pad':0,'label':"d_a_obj_tgake__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D0C144,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D0C148,'size':32,'pad':0,'label':"daObjGake_METHODS",'name':"daObjGake_METHODS",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D0C168,'size':48,'pad':0,'label':"g_profile_Obj_Gake",'name':"g_profile_Obj_Gake",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D0C198,'size':40,'pad':0,'label':"__vt__11daObjGake_c",'name':"__vt__11daObjGake_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__11daObjGake_cFv":3,
	"setBaseMtx__11daObjGake_cFv":4,
	"Create__11daObjGake_cFv":5,
	"CreateHeap__11daObjGake_cFv":6,
	"create1st__11daObjGake_cFv":7,
	"Execute__11daObjGake_cFPPA3_A4_f":8,
	"Draw__11daObjGake_cFv":9,
	"Delete__11daObjGake_cFv":10,
	"daObjGake_create1st__FP11daObjGake_c":11,
	"daObjGake_MoveBGDelete__FP11daObjGake_c":12,
	"daObjGake_MoveBGExecute__FP11daObjGake_c":13,
	"daObjGake_MoveBGDraw__FP11daObjGake_c":14,
	"_ctors":15,
	"_dtors":16,
	"d_a_obj_tgake__stringBase0":17,
	"l_arcName":18,
	"daObjGake_METHODS":19,
	"g_profile_Obj_Gake":20,
	"__vt__11daObjGake_c":21,
}

