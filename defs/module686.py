#
# Generate By: dol2asm
# Module: 686
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_well_cover",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"unknown_translation_unit_bss",
	"d_a_obj_well_cover",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".dtors",
	".bss",
	".rodata",
	".data",
]

# Symbols
SYMBOLS = [
	{'addr':0x80D36220,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3624C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D36278,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D36298,'size':60,'pad':0,'label':"initBaseMtx__13daObjWCover_cFv",'name':"initBaseMtx__13daObjWCover_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D362D4,'size':116,'pad':0,'label':"setBaseMtx__13daObjWCover_cFv",'name':"setBaseMtx__13daObjWCover_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D36348,'size':76,'pad':0,'label':"Create__13daObjWCover_cFv",'name':"Create__13daObjWCover_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D36394,'size':112,'pad':0,'label':"CreateHeap__13daObjWCover_cFv",'name':"CreateHeap__13daObjWCover_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D36404,'size':220,'pad':0,'label':"create__13daObjWCover_cFv",'name':"create__13daObjWCover_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D364E0,'size':76,'pad':0,'label':"Execute__13daObjWCover_cFPPA3_A4_f",'name':"Execute__13daObjWCover_cFPPA3_A4_f",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3652C,'size':140,'pad':0,'label':"action__13daObjWCover_cFv",'name':"action__13daObjWCover_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D365B8,'size':472,'pad':0,'label':"modeWait__13daObjWCover_cFv",'name':"modeWait__13daObjWCover_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D36790,'size':268,'pad':0,'label':"init_modeBreak__13daObjWCover_cFv",'name':"init_modeBreak__13daObjWCover_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3689C,'size':4,'pad':0,'label':"modeBreak__13daObjWCover_cFv",'name':"modeBreak__13daObjWCover_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D368A0,'size':164,'pad':0,'label':"Draw__13daObjWCover_cFv",'name':"Draw__13daObjWCover_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D36944,'size':52,'pad':0,'label':"Delete__13daObjWCover_cFv",'name':"Delete__13daObjWCover_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D36978,'size':44,'pad':0,'label':"daObjWCover_Draw__FP13daObjWCover_c",'name':"daObjWCover_Draw__FP13daObjWCover_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D369A4,'size':32,'pad':0,'label':"daObjWCover_Execute__FP13daObjWCover_c",'name':"daObjWCover_Execute__FP13daObjWCover_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D369C4,'size':32,'pad':0,'label':"daObjWCover_Delete__FP13daObjWCover_c",'name':"daObjWCover_Delete__FP13daObjWCover_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D369E4,'size':32,'pad':0,'label':"daObjWCover_Create__FP10fopAc_ac_c",'name':"daObjWCover_Create__FP10fopAc_ac_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D36A04,'size':4,'pad':0,'label':"data_80D36A04",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D36A08,'size':4,'pad':0,'label':"data_80D36A08",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D36A0C,'size':4,'pad':0,'label':"lit_3794",'name':"@3794",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D36A10,'size':4,'pad':0,'label':"lit_3795",'name':"@3795",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D36A14,'size':8,'pad':0,'label':"lit_3796",'name':"@3796",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D36A1C,'size':8,'pad':0,'label':"lit_3797",'name':"@3797",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D36A24,'size':8,'pad':0,'label':"lit_3798",'name':"@3798",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D36A2C,'size':4,'pad':0,'label':"lit_3799",'name':"@3799",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D36A30,'size':4,'pad':0,'label':"lit_3800",'name':"@3800",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D36A34,'size':6,'pad':2,'label':"data_80D36A34",'name':"particle_id$3806",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D36A3C,'size':4,'pad':0,'label':"lit_3833",'name':"@3833",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D36A40,'size':10,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D36A4C,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D36A58,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D36A6C,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D36A70,'size':12,'pad':0,'label':"lit_3731",'name':"@3731",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D36A7C,'size':12,'pad':0,'label':"lit_3732",'name':"@3732",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D36A88,'size':24,'pad':0,'label':"data_80D36A88",'name':"l_func$3730",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D36AA0,'size':32,'pad':0,'label':"l_daObjWCover_Method",'name':"l_daObjWCover_Method",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D36AC0,'size':48,'pad':0,'label':"g_profile_Obj_WellCover",'name':"g_profile_Obj_WellCover",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D36AF0,'size':40,'pad':0,'label':"__vt__13daObjWCover_c",'name':"__vt__13daObjWCover_c",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D36B18,'size':4,'pad':0,'label':"data_80D36B18",'name':None,'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__13daObjWCover_cFv":3,
	"setBaseMtx__13daObjWCover_cFv":4,
	"Create__13daObjWCover_cFv":5,
	"CreateHeap__13daObjWCover_cFv":6,
	"create__13daObjWCover_cFv":7,
	"Execute__13daObjWCover_cFPPA3_A4_f":8,
	"action__13daObjWCover_cFv":9,
	"modeWait__13daObjWCover_cFv":10,
	"init_modeBreak__13daObjWCover_cFv":11,
	"modeBreak__13daObjWCover_cFv":12,
	"Draw__13daObjWCover_cFv":13,
	"Delete__13daObjWCover_cFv":14,
	"daObjWCover_Draw__FP13daObjWCover_c":15,
	"daObjWCover_Execute__FP13daObjWCover_c":16,
	"daObjWCover_Delete__FP13daObjWCover_c":17,
	"daObjWCover_Create__FP10fopAc_ac_c":18,
	"data_80D36A04":19,
	"data_80D36A08":20,
	"lit_3794":21,
	"lit_3795":22,
	"lit_3796":23,
	"lit_3797":24,
	"lit_3798":25,
	"lit_3799":26,
	"lit_3800":27,
	"data_80D36A34":28,
	"lit_3833":29,
	"stringBase0":30,
	"cNullVec__6Z2Calc":31,
	"lit_1787":32,
	"l_arcName":33,
	"lit_3731":34,
	"lit_3732":35,
	"data_80D36A88":36,
	"l_daObjWCover_Method":37,
	"g_profile_Obj_WellCover":38,
	"__vt__13daObjWCover_c":39,
	"data_80D36B18":40,
}

