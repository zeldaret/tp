#
# Generate By: dol2asm
# Module: 572
#

# Libraries
LIBRARIES = [
	"d/a/obj/mirror/d_a_obj_mirror_6pole",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_mirror_6pole",
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
	{'addr':0x80C95DA0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C95DCC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C95DF8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C95E18,'size':20,'pad':0,'label':"initWait__18daObjMirror6Pole_cFv",'name':"initWait__18daObjMirror6Pole_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C95E2C,'size':92,'pad':0,'label':"executeWait__18daObjMirror6Pole_cFv",'name':"executeWait__18daObjMirror6Pole_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C95E88,'size':4,'pad':0,'label':"initDemo__18daObjMirror6Pole_cFv",'name':"initDemo__18daObjMirror6Pole_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C95E8C,'size':112,'pad':0,'label':"executeDemo__18daObjMirror6Pole_cFv",'name':"executeDemo__18daObjMirror6Pole_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C95EFC,'size':84,'pad':0,'label':"setBaseMtx__18daObjMirror6Pole_cFv",'name':"setBaseMtx__18daObjMirror6Pole_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C95F50,'size':32,'pad':0,'label':"createHeapCallBack__18daObjMirror6Pole_cFP10fopAc_ac_c",'name':"createHeapCallBack__18daObjMirror6Pole_cFP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C95F70,'size':616,'pad':0,'label':"CreateHeap__18daObjMirror6Pole_cFv",'name':"CreateHeap__18daObjMirror6Pole_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C961D8,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C96220,'size':264,'pad':0,'label':"daObjMirror6Pole_Create__FP10fopAc_ac_c",'name':"daObjMirror6Pole_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C96328,'size':80,'pad':0,'label':"daObjMirror6Pole_Delete__FP18daObjMirror6Pole_c",'name':"daObjMirror6Pole_Delete__FP18daObjMirror6Pole_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C96378,'size':68,'pad':0,'label':"daObjMirror6Pole_Execute__FP18daObjMirror6Pole_c",'name':"daObjMirror6Pole_Execute__FP18daObjMirror6Pole_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C963BC,'size':208,'pad':0,'label':"daObjMirror6Pole_Draw__FP18daObjMirror6Pole_c",'name':"daObjMirror6Pole_Draw__FP18daObjMirror6Pole_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9648C,'size':8,'pad':0,'label':"daObjMirror6Pole_IsDelete__FP18daObjMirror6Pole_c",'name':"daObjMirror6Pole_IsDelete__FP18daObjMirror6Pole_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C96494,'size':112,'pad':0,'label':"__sinit_d_a_obj_mirror_6pole_cpp",'name':"__sinit_d_a_obj_mirror_6pole_cpp",'lib':-1,'tu':3,'section':0,'class_template':None,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x80C96504,'size':8,'pad':0,'label':"data_80C96504",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C9650C,'size':4,'pad':0,'label':"data_80C9650C",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C96510,'size':4,'pad':0,'label':"lit_3630",'name':"@3630",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C96514,'size':4,'pad':0,'label':"lit_3755",'name':"@3755",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C96518,'size':8,'pad':0,'label':"lit_3757",'name':"@3757",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C96520,'size':9,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80C9652C,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C96538,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C9654C,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C96550,'size':12,'pad':0,'label':"lit_3617",'name':"@3617",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C9655C,'size':12,'pad':0,'label':"lit_3618",'name':"@3618",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C96568,'size':12,'pad':0,'label':"lit_3619",'name':"@3619",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C96574,'size':12,'pad':0,'label':"lit_3620",'name':"@3620",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C96580,'size':48,'pad':0,'label':"ActionTable__18daObjMirror6Pole_c",'name':"ActionTable__18daObjMirror6Pole_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C965B0,'size':32,'pad':0,'label':"l_daObjMirror6Pole_Method",'name':"l_daObjMirror6Pole_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C965D0,'size':48,'pad':0,'label':"g_profile_Obj_Mirror6Pole",'name':"g_profile_Obj_Mirror6Pole",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C96600,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initWait__18daObjMirror6Pole_cFv":3,
	"executeWait__18daObjMirror6Pole_cFv":4,
	"initDemo__18daObjMirror6Pole_cFv":5,
	"executeDemo__18daObjMirror6Pole_cFv":6,
	"setBaseMtx__18daObjMirror6Pole_cFv":7,
	"createHeapCallBack__18daObjMirror6Pole_cFP10fopAc_ac_c":8,
	"CreateHeap__18daObjMirror6Pole_cFv":9,
	"__dt__12J3DFrameCtrlFv":10,
	"daObjMirror6Pole_Create__FP10fopAc_ac_c":11,
	"daObjMirror6Pole_Delete__FP18daObjMirror6Pole_c":12,
	"daObjMirror6Pole_Execute__FP18daObjMirror6Pole_c":13,
	"daObjMirror6Pole_Draw__FP18daObjMirror6Pole_c":14,
	"daObjMirror6Pole_IsDelete__FP18daObjMirror6Pole_c":15,
	"__sinit_d_a_obj_mirror_6pole_cpp":16,
	"data_80C96504":17,
	"data_80C9650C":18,
	"lit_3630":19,
	"lit_3755":20,
	"lit_3757":21,
	"stringBase0":22,
	"cNullVec__6Z2Calc":23,
	"lit_1787":24,
	"l_arcName":25,
	"lit_3617":26,
	"lit_3618":27,
	"lit_3619":28,
	"lit_3620":29,
	"ActionTable__18daObjMirror6Pole_c":30,
	"l_daObjMirror6Pole_Method":31,
	"g_profile_Obj_Mirror6Pole":32,
	"__vt__12J3DFrameCtrl":33,
}

