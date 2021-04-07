#
# Generate By: dol2asm
# Module: 417
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_catdoor",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_catdoor",
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
	{'addr':0x80BC4240,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BC426C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BC4298,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BC42B8,'size':12,'pad':0,'label':"attr__14daObjCatDoor_cCFv",'name':"attr__14daObjCatDoor_cCFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,1],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BC42C4,'size':304,'pad':0,'label':"createSolidHeap__FP10fopAc_ac_c",'name':"createSolidHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BC43F4,'size':96,'pad':0,'label':"initBaseMtx__14daObjCatDoor_cFv",'name':"initBaseMtx__14daObjCatDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BC4454,'size':268,'pad':0,'label':"setBaseMtx__14daObjCatDoor_cFv",'name':"setBaseMtx__14daObjCatDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,1],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BC4560,'size':200,'pad':0,'label':"calcOpen__14daObjCatDoor_cFv",'name':"calcOpen__14daObjCatDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BC4628,'size':196,'pad':0,'label':"daObjCatDoor_Draw__FP14daObjCatDoor_c",'name':"daObjCatDoor_Draw__FP14daObjCatDoor_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BC46EC,'size':116,'pad':0,'label':"daObjCatDoor_Execute__FP14daObjCatDoor_c",'name':"daObjCatDoor_Execute__FP14daObjCatDoor_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BC4760,'size':8,'pad':0,'label':"daObjCatDoor_IsDelete__FP14daObjCatDoor_c",'name':"daObjCatDoor_IsDelete__FP14daObjCatDoor_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80BC4768,'size':224,'pad':0,'label':"daObjCatDoor_Delete__FP14daObjCatDoor_c",'name':"daObjCatDoor_Delete__FP14daObjCatDoor_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BC4848,'size':356,'pad':0,'label':"daObjCatDoor_Create__FP10fopAc_ac_c",'name':"daObjCatDoor_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BC49AC,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80BC49B0,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80BC49B4,'size':4,'pad':0,'label':"M_attr__14daObjCatDoor_c",'name':"M_attr__14daObjCatDoor_c",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BC49B8,'size':4,'pad':0,'label':"lit_3712",'name':"@3712",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BC49BC,'size':4,'pad':0,'label':"lit_3713",'name':"@3713",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BC49C0,'size':4,'pad':0,'label':"lit_3714",'name':"@3714",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BC49C4,'size':4,'pad':0,'label':"lit_3860",'name':"@3860",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BC49C8,'size':4,'pad':0,'label':"lit_3861",'name':"@3861",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BC49CC,'size':4,'pad':0,'label':"lit_3862",'name':"@3862",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BC49D0,'size':4,'pad':0,'label':"lit_3863",'name':"@3863",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BC49D4,'size':4,'pad':0,'label':"lit_3864",'name':"@3864",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BC49D8,'size':8,'pad':0,'label':"d_a_obj_catdoor__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80BC49E0,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BC49E4,'size':32,'pad':0,'label':"l_daObjCatDoor_Method",'name':"l_daObjCatDoor_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BC4A04,'size':48,'pad':0,'label':"g_profile_Obj_CatDoor",'name':"g_profile_Obj_CatDoor",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"attr__14daObjCatDoor_cCFv":3,
	"createSolidHeap__FP10fopAc_ac_c":4,
	"initBaseMtx__14daObjCatDoor_cFv":5,
	"setBaseMtx__14daObjCatDoor_cFv":6,
	"calcOpen__14daObjCatDoor_cFv":7,
	"daObjCatDoor_Draw__FP14daObjCatDoor_c":8,
	"daObjCatDoor_Execute__FP14daObjCatDoor_c":9,
	"daObjCatDoor_IsDelete__FP14daObjCatDoor_c":10,
	"daObjCatDoor_Delete__FP14daObjCatDoor_c":11,
	"daObjCatDoor_Create__FP10fopAc_ac_c":12,
	"_ctors":13,
	"_dtors":14,
	"M_attr__14daObjCatDoor_c":15,
	"lit_3712":16,
	"lit_3713":17,
	"lit_3714":18,
	"lit_3860":19,
	"lit_3861":20,
	"lit_3862":21,
	"lit_3863":22,
	"lit_3864":23,
	"d_a_obj_catdoor__stringBase0":24,
	"l_arcName":25,
	"l_daObjCatDoor_Method":26,
	"g_profile_Obj_CatDoor":27,
}

