#
# Generate By: dol2asm
# Module: 598
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_prop",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_prop",
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
	{'addr':0x80CB5160,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB518C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB51B8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB51D8,'size':32,'pad':0,'label':"daObjProp_c_createHeap__FP10fopAc_ac_c",'name':"daObjProp_c_createHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB51F8,'size':60,'pad':0,'label':"__ct__11daObjProp_cFv",'name':"__ct__11daObjProp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB5234,'size':128,'pad':0,'label':"__dt__11daObjProp_cFv",'name':"__dt__11daObjProp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB52B4,'size':128,'pad':0,'label':"createHeap__11daObjProp_cFv",'name':"createHeap__11daObjProp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB5334,'size':212,'pad':0,'label':"create__11daObjProp_cFv",'name':"create__11daObjProp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB5408,'size':52,'pad':0,'label':"Delete__11daObjProp_cFv",'name':"Delete__11daObjProp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB543C,'size':100,'pad':0,'label':"draw__11daObjProp_cFv",'name':"draw__11daObjProp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB54A0,'size':68,'pad':0,'label':"execute__11daObjProp_cFv",'name':"execute__11daObjProp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB54E4,'size':16,'pad':0,'label':"init__11daObjProp_cFv",'name':"init__11daObjProp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB54F4,'size':100,'pad':0,'label':"setModelMtx__11daObjProp_cFv",'name':"setModelMtx__11daObjProp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB5558,'size':84,'pad':0,'label':"daObjProp_create__FP11daObjProp_c",'name':"daObjProp_create__FP11daObjProp_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB55AC,'size':32,'pad':0,'label':"daObjProp_Delete__FP11daObjProp_c",'name':"daObjProp_Delete__FP11daObjProp_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB55CC,'size':32,'pad':0,'label':"daObjProp_execute__FP11daObjProp_c",'name':"daObjProp_execute__FP11daObjProp_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB55EC,'size':32,'pad':0,'label':"daObjProp_draw__FP11daObjProp_c",'name':"daObjProp_draw__FP11daObjProp_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CB560C,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CB5610,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CB5614,'size':8,'pad':0,'label':"BMD_IDX",'name':"BMD_IDX$3638",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CB561C,'size':4,'pad':0,'label':"ADD_ANGLE",'name':"ADD_ANGLE$3689",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CB5620,'size':7,'pad':0,'label':"d_a_obj_prop__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80CB5628,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CB562C,'size':32,'pad':0,'label':"daObjProp_METHODS",'name':"daObjProp_METHODS",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CB564C,'size':48,'pad':0,'label':"g_profile_Obj_Prop",'name':"g_profile_Obj_Prop",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CB567C,'size':12,'pad':0,'label':"__vt__11daObjProp_c",'name':"__vt__11daObjProp_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daObjProp_c_createHeap__FP10fopAc_ac_c":3,
	"__ct__11daObjProp_cFv":4,
	"__dt__11daObjProp_cFv":5,
	"createHeap__11daObjProp_cFv":6,
	"create__11daObjProp_cFv":7,
	"Delete__11daObjProp_cFv":8,
	"draw__11daObjProp_cFv":9,
	"execute__11daObjProp_cFv":10,
	"init__11daObjProp_cFv":11,
	"setModelMtx__11daObjProp_cFv":12,
	"daObjProp_create__FP11daObjProp_c":13,
	"daObjProp_Delete__FP11daObjProp_c":14,
	"daObjProp_execute__FP11daObjProp_c":15,
	"daObjProp_draw__FP11daObjProp_c":16,
	"_ctors":17,
	"_dtors":18,
	"BMD_IDX":19,
	"ADD_ANGLE":20,
	"d_a_obj_prop__stringBase0":21,
	"l_arcName":22,
	"daObjProp_METHODS":23,
	"g_profile_Obj_Prop":24,
	"__vt__11daObjProp_c":25,
}

