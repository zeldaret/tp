#
# Generate By: dol2asm
# Module: 586
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_onsen",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_onsen",
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
	{'addr':0x80CA7AE0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA7B0C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA7B38,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA7B58,'size':88,'pad':0,'label':"initBaseMtx__12daObjOnsen_cFv",'name':"initBaseMtx__12daObjOnsen_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA7BB0,'size':120,'pad':0,'label':"setBaseMtx__12daObjOnsen_cFv",'name':"setBaseMtx__12daObjOnsen_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA7C28,'size':76,'pad':0,'label':"Create__12daObjOnsen_cFv",'name':"Create__12daObjOnsen_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA7C74,'size':392,'pad':0,'label':"CreateHeap__12daObjOnsen_cFv",'name':"CreateHeap__12daObjOnsen_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA7DFC,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA7E44,'size':168,'pad':0,'label':"create1st__12daObjOnsen_cFv",'name':"create1st__12daObjOnsen_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA7EEC,'size':48,'pad':0,'label':"Execute__12daObjOnsen_cFPPA3_A4_f",'name':"Execute__12daObjOnsen_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA7F1C,'size':236,'pad':0,'label':"Draw__12daObjOnsen_cFv",'name':"Draw__12daObjOnsen_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA8008,'size':64,'pad':0,'label':"Delete__12daObjOnsen_cFv",'name':"Delete__12daObjOnsen_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA8048,'size':96,'pad':0,'label':"daObjOnsen_create1st__FP12daObjOnsen_c",'name':"daObjOnsen_create1st__FP12daObjOnsen_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA80A8,'size':32,'pad':0,'label':"daObjOnsen_MoveBGDelete__FP12daObjOnsen_c",'name':"daObjOnsen_MoveBGDelete__FP12daObjOnsen_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA80C8,'size':32,'pad':0,'label':"daObjOnsen_MoveBGExecute__FP12daObjOnsen_c",'name':"daObjOnsen_MoveBGExecute__FP12daObjOnsen_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA80E8,'size':44,'pad':0,'label':"daObjOnsen_MoveBGDraw__FP12daObjOnsen_c",'name':"daObjOnsen_MoveBGDraw__FP12daObjOnsen_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA8114,'size':4,'pad':0,'label':"data_80CA8114",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CA8118,'size':4,'pad':0,'label':"data_80CA8118",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CA811C,'size':8,'pad':0,'label':"l_bmd",'name':"l_bmd",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CA8124,'size':8,'pad':0,'label':"l_btk",'name':"l_btk",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CA812C,'size':8,'pad':0,'label':"l_bmd2",'name':"l_bmd2",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CA8134,'size':8,'pad':0,'label':"l_dzb",'name':"l_dzb",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CA813C,'size':8,'pad':0,'label':"l_heap_size",'name':"l_heap_size",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CA8144,'size':4,'pad':0,'label':"lit_3694",'name':"@3694",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CA8148,'size':8,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80CA8150,'size':12,'pad':0,'label':"data_80CA8150",'name':None,'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CA815C,'size':8,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CA8164,'size':32,'pad':0,'label':"daObjOnsen_METHODS",'name':"daObjOnsen_METHODS",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CA8184,'size':48,'pad':0,'label':"g_profile_Obj_Onsen",'name':"g_profile_Obj_Onsen",'lib':-1,'tu':3,'section':4,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CA81B4,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CA81C0,'size':40,'pad':0,'label':"__vt__12daObjOnsen_c",'name':"__vt__12daObjOnsen_c",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__12daObjOnsen_cFv":3,
	"setBaseMtx__12daObjOnsen_cFv":4,
	"Create__12daObjOnsen_cFv":5,
	"CreateHeap__12daObjOnsen_cFv":6,
	"__dt__12J3DFrameCtrlFv":7,
	"create1st__12daObjOnsen_cFv":8,
	"Execute__12daObjOnsen_cFPPA3_A4_f":9,
	"Draw__12daObjOnsen_cFv":10,
	"Delete__12daObjOnsen_cFv":11,
	"daObjOnsen_create1st__FP12daObjOnsen_c":12,
	"daObjOnsen_MoveBGDelete__FP12daObjOnsen_c":13,
	"daObjOnsen_MoveBGExecute__FP12daObjOnsen_c":14,
	"daObjOnsen_MoveBGDraw__FP12daObjOnsen_c":15,
	"data_80CA8114":16,
	"data_80CA8118":17,
	"l_bmd":18,
	"l_btk":19,
	"l_bmd2":20,
	"l_dzb":21,
	"l_heap_size":22,
	"lit_3694":23,
	"stringBase0":24,
	"data_80CA8150":25,
	"l_arcName":26,
	"daObjOnsen_METHODS":27,
	"g_profile_Obj_Onsen":28,
	"__vt__12J3DFrameCtrl":29,
	"__vt__12daObjOnsen_c":30,
}

