#
# Generate By: dol2asm
# Module: 509
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_kwheel01",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_kwheel01",
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
	{'addr':0x80C4EA00,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4EA2C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4EA58,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4EA78,'size':476,'pad':0,'label':"create1st__15daObjKWheel01_cFv",'name':"create1st__15daObjKWheel01_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4EC54,'size':376,'pad':0,'label':"setMtx__15daObjKWheel01_cFv",'name':"setMtx__15daObjKWheel01_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4EDCC,'size':364,'pad':0,'label':"CreateHeap__15daObjKWheel01_cFv",'name':"CreateHeap__15daObjKWheel01_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4EF38,'size':180,'pad':0,'label':"Create__15daObjKWheel01_cFv",'name':"Create__15daObjKWheel01_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4EFEC,'size':92,'pad':0,'label':"searchKWheel00__FPvPv",'name':"searchKWheel00__FPvPv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F048,'size':764,'pad':0,'label':"Execute__15daObjKWheel01_cFPPA3_A4_f",'name':"Execute__15daObjKWheel01_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F344,'size':164,'pad':0,'label':"Draw__15daObjKWheel01_cFv",'name':"Draw__15daObjKWheel01_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F3E8,'size':176,'pad':0,'label':"Delete__15daObjKWheel01_cFv",'name':"Delete__15daObjKWheel01_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F498,'size':40,'pad':0,'label':"eventStart__15daObjKWheel01_cFv",'name':"eventStart__15daObjKWheel01_cFv",'lib':-1,'tu':3,'section':0,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F4C0,'size':128,'pad':0,'label':"daObjKWheel01_create1st__FP15daObjKWheel01_c",'name':"daObjKWheel01_create1st__FP15daObjKWheel01_c",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F540,'size':32,'pad':0,'label':"daObjKWheel01_MoveBGDelete__FP15daObjKWheel01_c",'name':"daObjKWheel01_MoveBGDelete__FP15daObjKWheel01_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F560,'size':32,'pad':0,'label':"daObjKWheel01_MoveBGExecute__FP15daObjKWheel01_c",'name':"daObjKWheel01_MoveBGExecute__FP15daObjKWheel01_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F580,'size':44,'pad':0,'label':"daObjKWheel01_MoveBGDraw__FP15daObjKWheel01_c",'name':"daObjKWheel01_MoveBGDraw__FP15daObjKWheel01_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F5AC,'size':72,'pad':0,'label':"__dt__17dEvLib_callback_cFv",'name':"__dt__17dEvLib_callback_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F5F4,'size':8,'pad':0,'label':"eventStart__17dEvLib_callback_cFv",'name':"eventStart__17dEvLib_callback_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C4F5FC,'size':8,'pad':0,'label':"eventRun__17dEvLib_callback_cFv",'name':"eventRun__17dEvLib_callback_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C4F604,'size':8,'pad':0,'label':"eventEnd__17dEvLib_callback_cFv",'name':"eventEnd__17dEvLib_callback_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C4F60C,'size':148,'pad':0,'label':"__dt__15daObjKWheel01_cFv",'name':"__dt__15daObjKWheel01_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F6A0,'size':8,'pad':0,'label':"func_80C4F6A0",'name':"@1448@eventStart__15daObjKWheel01_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F6A8,'size':8,'pad':0,'label':"func_80C4F6A8",'name':"@1448@__dt__15daObjKWheel01_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4F6B0,'size':4,'pad':0,'label':"data_80C4F6B0",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C4F6B4,'size':4,'pad':0,'label':"data_80C4F6B4",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C4F6B8,'size':12,'pad':0,'label':"l_dzbidx",'name':"l_dzbidx",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C4F6C4,'size':8,'pad':0,'label':"l_bmdidx",'name':"l_bmdidx",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C4F6CC,'size':24,'pad':0,'label':"l_cull_box",'name':"l_cull_box",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C4F6E4,'size':4,'pad':0,'label':"lit_3717",'name':"@3717",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C4F6E8,'size':4,'pad':0,'label':"lit_3888",'name':"@3888",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C4F6EC,'size':10,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80C4F6F8,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C4F6FC,'size':48,'pad':0,'label':"l_pos",'name':"l_pos",'lib':-1,'tu':3,'section':4,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C4F72C,'size':32,'pad':0,'label':"daObjKWheel01_METHODS",'name':"daObjKWheel01_METHODS",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C4F74C,'size':48,'pad':0,'label':"g_profile_Obj_KWheel01",'name':"g_profile_Obj_KWheel01",'lib':-1,'tu':3,'section':4,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C4F77C,'size':24,'pad':0,'label':"__vt__17dEvLib_callback_c",'name':"__vt__17dEvLib_callback_c",'lib':-1,'tu':3,'section':4,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C4F794,'size':72,'pad':0,'label':"__vt__15daObjKWheel01_c",'name':"__vt__15daObjKWheel01_c",'lib':-1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create1st__15daObjKWheel01_cFv":3,
	"setMtx__15daObjKWheel01_cFv":4,
	"CreateHeap__15daObjKWheel01_cFv":5,
	"Create__15daObjKWheel01_cFv":6,
	"searchKWheel00__FPvPv":7,
	"Execute__15daObjKWheel01_cFPPA3_A4_f":8,
	"Draw__15daObjKWheel01_cFv":9,
	"Delete__15daObjKWheel01_cFv":10,
	"eventStart__15daObjKWheel01_cFv":11,
	"daObjKWheel01_create1st__FP15daObjKWheel01_c":12,
	"daObjKWheel01_MoveBGDelete__FP15daObjKWheel01_c":13,
	"daObjKWheel01_MoveBGExecute__FP15daObjKWheel01_c":14,
	"daObjKWheel01_MoveBGDraw__FP15daObjKWheel01_c":15,
	"__dt__17dEvLib_callback_cFv":16,
	"eventStart__17dEvLib_callback_cFv":17,
	"eventRun__17dEvLib_callback_cFv":18,
	"eventEnd__17dEvLib_callback_cFv":19,
	"__dt__15daObjKWheel01_cFv":20,
	"func_80C4F6A0":21,
	"func_80C4F6A8":22,
	"data_80C4F6B0":23,
	"data_80C4F6B4":24,
	"l_dzbidx":25,
	"l_bmdidx":26,
	"l_cull_box":27,
	"lit_3717":28,
	"lit_3888":29,
	"stringBase0":30,
	"l_arcName":31,
	"l_pos":32,
	"daObjKWheel01_METHODS":33,
	"g_profile_Obj_KWheel01":34,
	"__vt__17dEvLib_callback_c":35,
	"__vt__15daObjKWheel01_c":36,
}

