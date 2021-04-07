#
# Generate By: dol2asm
# Module: 694
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_ystone",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_ystone",
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
	{'addr':0x80D3DFA0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3DFCC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3DFF8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3E018,'size':120,'pad':0,'label':"getNowLevel__Fv",'name':"getNowLevel__Fv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3E090,'size':240,'pad':0,'label':"daObj_Ystone_Draw__FP16obj_ystone_class",'name':"daObj_Ystone_Draw__FP16obj_ystone_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3E180,'size':220,'pad':0,'label':"setModelBaseMtx__FP16obj_ystone_class",'name':"setModelBaseMtx__FP16obj_ystone_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3E25C,'size':1168,'pad':0,'label':"action__FP16obj_ystone_class",'name':"action__FP16obj_ystone_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3E6EC,'size':132,'pad':0,'label':"daObj_Ystone_Execute__FP16obj_ystone_class",'name':"daObj_Ystone_Execute__FP16obj_ystone_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3E770,'size':8,'pad':0,'label':"daObj_Ystone_IsDelete__FP16obj_ystone_class",'name':"daObj_Ystone_IsDelete__FP16obj_ystone_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D3E778,'size':64,'pad':0,'label':"daObj_Ystone_Delete__FP16obj_ystone_class",'name':"daObj_Ystone_Delete__FP16obj_ystone_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3E7B8,'size':640,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3EA38,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3EA80,'size':388,'pad':0,'label':"daObj_Ystone_Create__FP10fopAc_ac_c",'name':"daObj_Ystone_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3EC04,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D3EC08,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D3EC0C,'size':28,'pad':0,'label':"l_bmdIndex",'name':"l_bmdIndex",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D3EC28,'size':12,'pad':0,'label':"l_brkIndex",'name':"l_brkIndex",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D3EC34,'size':28,'pad':0,'label':"l_btkIndex",'name':"l_btkIndex",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D3EC50,'size':4,'pad':0,'label':"lit_3967",'name':"@3967",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D3EC54,'size':4,'pad':0,'label':"lit_3968",'name':"@3968",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D3EC58,'size':4,'pad':0,'label':"lit_3969",'name':"@3969",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D3EC5C,'size':94,'pad':0,'label':"d_a_obj_ystone__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D3ECBC,'size':28,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D3ECD8,'size':36,'pad':0,'label':"l_stageName",'name':"l_stageName$3775",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D3ECFC,'size':20,'pad':0,'label':"mirror_effect_id",'name':"mirror_effect_id$3870",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D3ED10,'size':28,'pad':0,'label':"lit_3970",'name':"@3970",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D3ED2C,'size':32,'pad':0,'label':"l_daObj_Ystone_Method",'name':"l_daObj_Ystone_Method",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D3ED4C,'size':48,'pad':0,'label':"g_profile_OBJ_YSTONE",'name':"g_profile_OBJ_YSTONE",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D3ED7C,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"getNowLevel__Fv":3,
	"daObj_Ystone_Draw__FP16obj_ystone_class":4,
	"setModelBaseMtx__FP16obj_ystone_class":5,
	"action__FP16obj_ystone_class":6,
	"daObj_Ystone_Execute__FP16obj_ystone_class":7,
	"daObj_Ystone_IsDelete__FP16obj_ystone_class":8,
	"daObj_Ystone_Delete__FP16obj_ystone_class":9,
	"useHeapInit__FP10fopAc_ac_c":10,
	"__dt__12J3DFrameCtrlFv":11,
	"daObj_Ystone_Create__FP10fopAc_ac_c":12,
	"_ctors":13,
	"_dtors":14,
	"l_bmdIndex":15,
	"l_brkIndex":16,
	"l_btkIndex":17,
	"lit_3967":18,
	"lit_3968":19,
	"lit_3969":20,
	"d_a_obj_ystone__stringBase0":21,
	"l_arcName":22,
	"l_stageName":23,
	"mirror_effect_id":24,
	"lit_3970":25,
	"l_daObj_Ystone_Method":26,
	"g_profile_OBJ_YSTONE":27,
	"__vt__12J3DFrameCtrl":28,
}

