#
# Generate By: dol2asm
# Module: 117
#

# Libraries
LIBRARIES = [
	"d/a/d_a_scene_exit2",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"unknown_translation_unit_bss",
	"d_a_scene_exit2",
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
	{'addr':0x8059E0E0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E10C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E138,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E158,'size':32,'pad':0,'label':"initBaseMtx__10daScExit_cFv",'name':"initBaseMtx__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E178,'size':56,'pad':0,'label':"setBaseMtx__10daScExit_cFv",'name':"setBaseMtx__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E1B0,'size':128,'pad':0,'label':"Create__10daScExit_cFv",'name':"Create__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E230,'size':144,'pad':0,'label':"create__10daScExit_cFv",'name':"create__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E2C0,'size':36,'pad':0,'label':"execute__10daScExit_cFv",'name':"execute__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E2E4,'size':188,'pad':0,'label':"event_proc_call__10daScExit_cFv",'name':"event_proc_call__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E3A0,'size':104,'pad':0,'label':"actionWait__10daScExit_cFv",'name':"actionWait__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E408,'size':128,'pad':0,'label':"actionOrderEvent__10daScExit_cFv",'name':"actionOrderEvent__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E488,'size':124,'pad':0,'label':"actionEvent__10daScExit_cFv",'name':"actionEvent__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E504,'size':4,'pad':0,'label':"actionDead__10daScExit_cFv",'name':"actionDead__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8059E508,'size':452,'pad':0,'label':"demoProc__10daScExit_cFv",'name':"demoProc__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E6CC,'size':72,'pad':0,'label':"checkArea__10daScExit_cFv",'name':"checkArea__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E714,'size':8,'pad':0,'label':"draw__10daScExit_cFv",'name':"draw__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8059E71C,'size':52,'pad':0,'label':"_delete__10daScExit_cFv",'name':"_delete__10daScExit_cFv",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E750,'size':32,'pad':0,'label':"daScExit_Draw__FP10daScExit_c",'name':"daScExit_Draw__FP10daScExit_c",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E770,'size':32,'pad':0,'label':"daScExit_Execute__FP10daScExit_c",'name':"daScExit_Execute__FP10daScExit_c",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E790,'size':32,'pad':0,'label':"daScExit_Delete__FP10daScExit_c",'name':"daScExit_Delete__FP10daScExit_c",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E7B0,'size':32,'pad':0,'label':"daScExit_Create__FP10daScExit_c",'name':"daScExit_Create__FP10daScExit_c",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E7D0,'size':28,'pad':0,'label':"func_8059E7D0",'name':"cLib_calcTimer<Uc>__FPUc",'lib':-1,'tu':4,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E7EC,'size':4,'pad':0,'label':"data_8059E7EC",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8059E7F0,'size':4,'pad':0,'label':"data_8059E7F0",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8059E7F4,'size':4,'pad':0,'label':"lit_3659",'name':"@3659",'lib':-1,'tu':4,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8059E7F8,'size':4,'pad':0,'label':"lit_3797",'name':"@3797",'lib':-1,'tu':4,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8059E7FC,'size':4,'pad':0,'label':"lit_3798",'name':"@3798",'lib':-1,'tu':4,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8059E800,'size':4,'pad':0,'label':"lit_3799",'name':"@3799",'lib':-1,'tu':4,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8059E804,'size':4,'pad':0,'label':"lit_3800",'name':"@3800",'lib':-1,'tu':4,'section':4,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8059E808,'size':32,'pad':0,'label':"struct_8059E808",'name':None,'lib':-1,'tu':4,'section':4,'r':[4,0,0],'sh':[0,0,0],'type':"Structure"},
	{'addr':0x8059E828,'size':16,'pad':0,'label':"data_8059E828",'name':None,'lib':-1,'tu':4,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8059E838,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':4,'section':5,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8059E844,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':4,'section':5,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8059E858,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':4,'section':5,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8059E85C,'size':4,'pad':0,'label':"l_evName",'name':"l_evName",'lib':-1,'tu':4,'section':5,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8059E860,'size':12,'pad':0,'label':"lit_3699",'name':"@3699",'lib':-1,'tu':4,'section':5,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8059E86C,'size':12,'pad':0,'label':"lit_3700",'name':"@3700",'lib':-1,'tu':4,'section':5,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8059E878,'size':12,'pad':0,'label':"lit_3701",'name':"@3701",'lib':-1,'tu':4,'section':5,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8059E884,'size':12,'pad':0,'label':"lit_3702",'name':"@3702",'lib':-1,'tu':4,'section':5,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8059E890,'size':48,'pad':0,'label':"l_func",'name':"l_func$3698",'lib':-1,'tu':4,'section':5,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8059E8C0,'size':12,'pad':0,'label':"action_table",'name':"action_table$3745",'lib':-1,'tu':4,'section':5,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8059E8CC,'size':32,'pad':0,'label':"l_daScExit_Method",'name':"l_daScExit_Method",'lib':-1,'tu':4,'section':5,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8059E8EC,'size':48,'pad':0,'label':"g_profile_SCENE_EXIT2",'name':"g_profile_SCENE_EXIT2",'lib':-1,'tu':4,'section':5,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8059E920,'size':4,'pad':0,'label':"data_8059E920",'name':None,'lib':-1,'tu':3,'section':3,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__10daScExit_cFv":3,
	"setBaseMtx__10daScExit_cFv":4,
	"Create__10daScExit_cFv":5,
	"create__10daScExit_cFv":6,
	"execute__10daScExit_cFv":7,
	"event_proc_call__10daScExit_cFv":8,
	"actionWait__10daScExit_cFv":9,
	"actionOrderEvent__10daScExit_cFv":10,
	"actionEvent__10daScExit_cFv":11,
	"actionDead__10daScExit_cFv":12,
	"demoProc__10daScExit_cFv":13,
	"checkArea__10daScExit_cFv":14,
	"draw__10daScExit_cFv":15,
	"_delete__10daScExit_cFv":16,
	"daScExit_Draw__FP10daScExit_c":17,
	"daScExit_Execute__FP10daScExit_c":18,
	"daScExit_Delete__FP10daScExit_c":19,
	"daScExit_Create__FP10daScExit_c":20,
	"func_8059E7D0":21,
	"data_8059E7EC":22,
	"data_8059E7F0":23,
	"lit_3659":24,
	"lit_3797":25,
	"lit_3798":26,
	"lit_3799":27,
	"lit_3800":28,
	"struct_8059E808":29,
	"data_8059E828":30,
	"cNullVec__6Z2Calc":31,
	"lit_1787":32,
	"l_arcName":33,
	"l_evName":34,
	"lit_3699":35,
	"lit_3700":36,
	"lit_3701":37,
	"lit_3702":38,
	"l_func":39,
	"action_table":40,
	"l_daScExit_Method":41,
	"g_profile_SCENE_EXIT2":42,
	"data_8059E920":43,
}

