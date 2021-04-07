#
# Generate By: dol2asm
# Module: 408
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_bk_leaf",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_bk_leaf",
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
	{'addr':0x80BB6060,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB608C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB60B8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB60D8,'size':32,'pad':0,'label':"CheckCreateHeap__FP10fopAc_ac_c",'name':"CheckCreateHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB60F8,'size':148,'pad':0,'label':"setBokkuri__10daBkLeaf_cFv",'name':"setBokkuri__10daBkLeaf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB618C,'size':60,'pad':0,'label':"initBaseMtx__10daBkLeaf_cFv",'name':"initBaseMtx__10daBkLeaf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB61C8,'size':84,'pad':0,'label':"setBaseMtx__10daBkLeaf_cFv",'name':"setBaseMtx__10daBkLeaf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB621C,'size':128,'pad':0,'label':"Create__10daBkLeaf_cFv",'name':"Create__10daBkLeaf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB629C,'size':272,'pad':0,'label':"CreateHeap__10daBkLeaf_cFv",'name':"CreateHeap__10daBkLeaf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB63AC,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB63F4,'size':180,'pad':0,'label':"create__10daBkLeaf_cFv",'name':"create__10daBkLeaf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB64A8,'size':284,'pad':0,'label':"execute__10daBkLeaf_cFv",'name':"execute__10daBkLeaf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB65C4,'size':144,'pad':0,'label':"draw__10daBkLeaf_cFv",'name':"draw__10daBkLeaf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB6654,'size':52,'pad':0,'label':"_delete__10daBkLeaf_cFv",'name':"_delete__10daBkLeaf_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB6688,'size':32,'pad':0,'label':"daBkLeaf_Draw__FP10daBkLeaf_c",'name':"daBkLeaf_Draw__FP10daBkLeaf_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB66A8,'size':32,'pad':0,'label':"daBkLeaf_Execute__FP10daBkLeaf_c",'name':"daBkLeaf_Execute__FP10daBkLeaf_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB66C8,'size':32,'pad':0,'label':"daBkLeaf_Delete__FP10daBkLeaf_c",'name':"daBkLeaf_Delete__FP10daBkLeaf_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB66E8,'size':32,'pad':0,'label':"daBkLeaf_Create__FP10fopAc_ac_c",'name':"daBkLeaf_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BB6708,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80BB670C,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80BB6710,'size':4,'pad':0,'label':"lit_3742",'name':"@3742",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BB6714,'size':4,'pad':0,'label':"lit_3811",'name':"@3811",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BB6718,'size':29,'pad':0,'label':"d_a_obj_bk_leaf__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80BB6738,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BB6744,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BB6758,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BB675C,'size':4,'pad':0,'label':"l_bmdName",'name':"l_bmdName",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BB6760,'size':4,'pad':0,'label':"l_bckName",'name':"l_bckName",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BB6764,'size':32,'pad':0,'label':"l_daBkLeaf_Method",'name':"l_daBkLeaf_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BB6784,'size':48,'pad':0,'label':"g_profile_Obj_BkLeaf",'name':"g_profile_Obj_BkLeaf",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BB67B4,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"CheckCreateHeap__FP10fopAc_ac_c":3,
	"setBokkuri__10daBkLeaf_cFv":4,
	"initBaseMtx__10daBkLeaf_cFv":5,
	"setBaseMtx__10daBkLeaf_cFv":6,
	"Create__10daBkLeaf_cFv":7,
	"CreateHeap__10daBkLeaf_cFv":8,
	"__dt__12J3DFrameCtrlFv":9,
	"create__10daBkLeaf_cFv":10,
	"execute__10daBkLeaf_cFv":11,
	"draw__10daBkLeaf_cFv":12,
	"_delete__10daBkLeaf_cFv":13,
	"daBkLeaf_Draw__FP10daBkLeaf_c":14,
	"daBkLeaf_Execute__FP10daBkLeaf_c":15,
	"daBkLeaf_Delete__FP10daBkLeaf_c":16,
	"daBkLeaf_Create__FP10fopAc_ac_c":17,
	"_ctors":18,
	"_dtors":19,
	"lit_3742":20,
	"lit_3811":21,
	"d_a_obj_bk_leaf__stringBase0":22,
	"cNullVec__6Z2Calc":23,
	"lit_1787":24,
	"l_arcName":25,
	"l_bmdName":26,
	"l_bckName":27,
	"l_daBkLeaf_Method":28,
	"g_profile_Obj_BkLeaf":29,
	"__vt__12J3DFrameCtrl":30,
}

