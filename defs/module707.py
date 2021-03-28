#
# Generate By: dol2asm
# Module: 707
#

# Libraries
LIBRARIES = [
	"d/a/d_a_swBall",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_swBall",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".dtors",
	".rodata",
	".data",
	".bss",
]

# Symbols
SYMBOLS = [
	{'addr':0x80D4DF60,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DF8C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DFB8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DFD8,'size':124,'pad':0,'label':"s_ball_sub__FPvPv",'name':"s_ball_sub__FPvPv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E054,'size':320,'pad':0,'label':"checkArea_sub__10daSwBall_cFP10fopAc_ac_c",'name':"checkArea_sub__10daSwBall_cFP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E194,'size':180,'pad':0,'label':"checkArea__10daSwBall_cFv",'name':"checkArea__10daSwBall_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E248,'size':300,'pad':0,'label':"search_ball__10daSwBall_cFv",'name':"search_ball__10daSwBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E374,'size':184,'pad':0,'label':"Create__10daSwBall_cFv",'name':"Create__10daSwBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E42C,'size':104,'pad':0,'label':"create__10daSwBall_cFv",'name':"create__10daSwBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E494,'size':144,'pad':0,'label':"execute__10daSwBall_cFv",'name':"execute__10daSwBall_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E524,'size':416,'pad':0,'label':"actionRun__10daSwBall_cFv",'name':"actionRun__10daSwBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E6C4,'size':4,'pad':0,'label':"actionStop__10daSwBall_cFv",'name':"actionStop__10daSwBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D4E6C8,'size':580,'pad':0,'label':"PutCrrPos__10daSwBall_cFv",'name':"PutCrrPos__10daSwBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E90C,'size':8,'pad':0,'label':"_delete__10daSwBall_cFv",'name':"_delete__10daSwBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D4E914,'size':32,'pad':0,'label':"daSwBall_Execute__FP10daSwBall_c",'name':"daSwBall_Execute__FP10daSwBall_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E934,'size':32,'pad':0,'label':"daSwBall_Delete__FP10daSwBall_c",'name':"daSwBall_Delete__FP10daSwBall_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E954,'size':32,'pad':0,'label':"daSwBall_Create__FP10fopAc_ac_c",'name':"daSwBall_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E974,'size':28,'pad':0,'label':"func_80D4E974",'name':"cLib_calcTimer<Uc>__FPUc",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4E990,'size':4,'pad':0,'label':"data_80D4E990",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4E994,'size':4,'pad':0,'label':"data_80D4E994",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4E998,'size':4,'pad':0,'label':"lit_3718",'name':"@3718",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D4E99C,'size':4,'pad':0,'label':"lit_3719",'name':"@3719",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D4E9A0,'size':4,'pad':0,'label':"lit_3720",'name':"@3720",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D4E9A4,'size':4,'pad':0,'label':"lit_3721",'name':"@3721",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4E9A8,'size':4,'pad':0,'label':"lit_3994",'name':"@3994",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D4E9AC,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4E9B8,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':3,'section':4,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D4E9CC,'size':12,'pad':0,'label':"lit_3847",'name':"@3847",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4E9D8,'size':12,'pad':0,'label':"lit_3848",'name':"@3848",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4E9E4,'size':24,'pad':0,'label':"l_func",'name':"l_func$3846",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4E9FC,'size':32,'pad':0,'label':"l_daSwBall_Method",'name':"l_daSwBall_Method",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4EA1C,'size':48,'pad':0,'label':"g_profile_SwBall",'name':"g_profile_SwBall",'lib':-1,'tu':3,'section':4,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4EA50,'size':32,'pad':0,'label':"l_target_info",'name':"l_target_info",'lib':-1,'tu':3,'section':5,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4EA70,'size':4,'pad':0,'label':"l_target_info_count",'name':"l_target_info_count",'lib':-1,'tu':3,'section':5,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4EA74,'size':4,'pad':0,'label':"data_80D4EA74",'name':None,'lib':-1,'tu':3,'section':5,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"s_ball_sub__FPvPv":3,
	"checkArea_sub__10daSwBall_cFP10fopAc_ac_c":4,
	"checkArea__10daSwBall_cFv":5,
	"search_ball__10daSwBall_cFv":6,
	"Create__10daSwBall_cFv":7,
	"create__10daSwBall_cFv":8,
	"execute__10daSwBall_cFv":9,
	"actionRun__10daSwBall_cFv":10,
	"actionStop__10daSwBall_cFv":11,
	"PutCrrPos__10daSwBall_cFv":12,
	"_delete__10daSwBall_cFv":13,
	"daSwBall_Execute__FP10daSwBall_c":14,
	"daSwBall_Delete__FP10daSwBall_c":15,
	"daSwBall_Create__FP10fopAc_ac_c":16,
	"func_80D4E974":17,
	"data_80D4E990":18,
	"data_80D4E994":19,
	"lit_3718":20,
	"lit_3719":21,
	"lit_3720":22,
	"lit_3721":23,
	"lit_3994":24,
	"cNullVec__6Z2Calc":25,
	"lit_1787":26,
	"lit_3847":27,
	"lit_3848":28,
	"l_func":29,
	"l_daSwBall_Method":30,
	"g_profile_SwBall":31,
	"l_target_info":32,
	"l_target_info_count":33,
	"data_80D4EA74":34,
}

