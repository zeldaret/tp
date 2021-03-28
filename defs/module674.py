#
# Generate By: dol2asm
# Module: 674
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_vground",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_vground",
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
	{'addr':0x80D21360,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2138C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D213B8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D213D8,'size':32,'pad':0,'label':"CheckCreateHeap__FP10fopAc_ac_c",'name':"CheckCreateHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D213F8,'size':80,'pad':0,'label':"initBaseMtx__11daObjVGnd_cFv",'name':"initBaseMtx__11daObjVGnd_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D21448,'size':100,'pad':0,'label':"setBaseMtx__11daObjVGnd_cFv",'name':"setBaseMtx__11daObjVGnd_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D214AC,'size':84,'pad':0,'label':"Create__11daObjVGnd_cFv",'name':"Create__11daObjVGnd_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D21500,'size':428,'pad':0,'label':"CreateHeap__11daObjVGnd_cFv",'name':"CreateHeap__11daObjVGnd_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D216AC,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D216F4,'size':180,'pad':0,'label':"create__11daObjVGnd_cFv",'name':"create__11daObjVGnd_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D217A8,'size':208,'pad':0,'label':"execute__11daObjVGnd_cFv",'name':"execute__11daObjVGnd_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D21878,'size':212,'pad':0,'label':"draw__11daObjVGnd_cFv",'name':"draw__11daObjVGnd_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2194C,'size':52,'pad':0,'label':"_delete__11daObjVGnd_cFv",'name':"_delete__11daObjVGnd_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D21980,'size':32,'pad':0,'label':"daObjVGnd_Draw__FP11daObjVGnd_c",'name':"daObjVGnd_Draw__FP11daObjVGnd_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D219A0,'size':32,'pad':0,'label':"daObjVGnd_Execute__FP11daObjVGnd_c",'name':"daObjVGnd_Execute__FP11daObjVGnd_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D219C0,'size':32,'pad':0,'label':"daObjVGnd_Delete__FP11daObjVGnd_c",'name':"daObjVGnd_Delete__FP11daObjVGnd_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D219E0,'size':32,'pad':0,'label':"daObjVGnd_Create__FP10fopAc_ac_c",'name':"daObjVGnd_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D21A00,'size':4,'pad':0,'label':"data_80D21A00",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D21A04,'size':4,'pad':0,'label':"data_80D21A04",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D21A08,'size':4,'pad':0,'label':"lit_3630",'name':"@3630",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D21A0C,'size':4,'pad':0,'label':"lit_3704",'name':"@3704",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D21A10,'size':4,'pad':0,'label':"lit_3778",'name':"@3778",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D21A14,'size':4,'pad':0,'label':"lit_3779",'name':"@3779",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D21A18,'size':10,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D21A24,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D21A28,'size':32,'pad':0,'label':"l_daObjVGnd_Method",'name':"l_daObjVGnd_Method",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D21A48,'size':48,'pad':0,'label':"g_profile_Obj_VolcGnd",'name':"g_profile_Obj_VolcGnd",'lib':-1,'tu':3,'section':4,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D21A78,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"CheckCreateHeap__FP10fopAc_ac_c":3,
	"initBaseMtx__11daObjVGnd_cFv":4,
	"setBaseMtx__11daObjVGnd_cFv":5,
	"Create__11daObjVGnd_cFv":6,
	"CreateHeap__11daObjVGnd_cFv":7,
	"__dt__12J3DFrameCtrlFv":8,
	"create__11daObjVGnd_cFv":9,
	"execute__11daObjVGnd_cFv":10,
	"draw__11daObjVGnd_cFv":11,
	"_delete__11daObjVGnd_cFv":12,
	"daObjVGnd_Draw__FP11daObjVGnd_c":13,
	"daObjVGnd_Execute__FP11daObjVGnd_c":14,
	"daObjVGnd_Delete__FP11daObjVGnd_c":15,
	"daObjVGnd_Create__FP10fopAc_ac_c":16,
	"data_80D21A00":17,
	"data_80D21A04":18,
	"lit_3630":19,
	"lit_3704":20,
	"lit_3778":21,
	"lit_3779":22,
	"stringBase0":23,
	"l_arcName":24,
	"l_daObjVGnd_Method":25,
	"g_profile_Obj_VolcGnd":26,
	"__vt__12J3DFrameCtrl":27,
}

