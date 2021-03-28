#
# Generate By: dol2asm
# Module: 708
#

# Libraries
LIBRARIES = [
	"d/a/d_a_swLBall",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_swLBall",
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
	{'addr':0x80D4EA80,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4EAAC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4EAD8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4EAF8,'size':148,'pad':0,'label':"s_lb_sub__FPvPv",'name':"s_lb_sub__FPvPv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4EB8C,'size':320,'pad':0,'label':"checkArea_sub__11daSwLBall_cFP10fopAc_ac_c",'name':"checkArea_sub__11daSwLBall_cFP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4ECCC,'size':180,'pad':0,'label':"checkArea__11daSwLBall_cFv",'name':"checkArea__11daSwLBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4ED80,'size':300,'pad':0,'label':"search_lb__11daSwLBall_cFv",'name':"search_lb__11daSwLBall_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4EEAC,'size':76,'pad':0,'label':"Create__11daSwLBall_cFv",'name':"Create__11daSwLBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4EEF8,'size':104,'pad':0,'label':"create__11daSwLBall_cFv",'name':"create__11daSwLBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4EF60,'size':168,'pad':0,'label':"execute__11daSwLBall_cFv",'name':"execute__11daSwLBall_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4F008,'size':120,'pad':0,'label':"actionInit__11daSwLBall_cFv",'name':"actionInit__11daSwLBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4F080,'size':416,'pad':0,'label':"actionRun__11daSwLBall_cFv",'name':"actionRun__11daSwLBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4F220,'size':4,'pad':0,'label':"actionStop__11daSwLBall_cFv",'name':"actionStop__11daSwLBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D4F224,'size':544,'pad':0,'label':"PutCrrPos__11daSwLBall_cFv",'name':"PutCrrPos__11daSwLBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4F444,'size':8,'pad':0,'label':"_delete__11daSwLBall_cFv",'name':"_delete__11daSwLBall_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D4F44C,'size':32,'pad':0,'label':"daSwLBall_Execute__FP11daSwLBall_c",'name':"daSwLBall_Execute__FP11daSwLBall_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4F46C,'size':32,'pad':0,'label':"daSwLBall_Delete__FP11daSwLBall_c",'name':"daSwLBall_Delete__FP11daSwLBall_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4F48C,'size':32,'pad':0,'label':"daSwLBall_Create__FP10fopAc_ac_c",'name':"daSwLBall_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4F4AC,'size':28,'pad':0,'label':"func_80D4F4AC",'name':"cLib_calcTimer<Uc>__FPUc",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4F4C8,'size':4,'pad':0,'label':"data_80D4F4C8",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4F4CC,'size':4,'pad':0,'label':"data_80D4F4CC",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4F4D0,'size':4,'pad':0,'label':"lit_3723",'name':"@3723",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D4F4D4,'size':4,'pad':0,'label':"lit_3724",'name':"@3724",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D4F4D8,'size':4,'pad':0,'label':"lit_3725",'name':"@3725",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D4F4DC,'size':4,'pad':0,'label':"lit_3726",'name':"@3726",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4F4E0,'size':4,'pad':0,'label':"lit_4000",'name':"@4000",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D4F4E4,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4F4F0,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':3,'section':4,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D4F504,'size':12,'pad':0,'label':"lit_3835",'name':"@3835",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4F510,'size':12,'pad':0,'label':"lit_3836",'name':"@3836",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4F51C,'size':12,'pad':0,'label':"lit_3837",'name':"@3837",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4F528,'size':36,'pad':0,'label':"l_func",'name':"l_func$3834",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4F54C,'size':32,'pad':0,'label':"l_daSwLBall_Method",'name':"l_daSwLBall_Method",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4F56C,'size':48,'pad':0,'label':"g_profile_SwLBall",'name':"g_profile_SwLBall",'lib':-1,'tu':3,'section':4,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4F5A0,'size':8,'pad':0,'label':"l_target_info",'name':"l_target_info",'lib':-1,'tu':3,'section':5,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4F5A8,'size':4,'pad':0,'label':"l_target_info_count",'name':"l_target_info_count",'lib':-1,'tu':3,'section':5,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4F5AC,'size':4,'pad':0,'label':"data_80D4F5AC",'name':None,'lib':-1,'tu':3,'section':5,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"s_lb_sub__FPvPv":3,
	"checkArea_sub__11daSwLBall_cFP10fopAc_ac_c":4,
	"checkArea__11daSwLBall_cFv":5,
	"search_lb__11daSwLBall_cFv":6,
	"Create__11daSwLBall_cFv":7,
	"create__11daSwLBall_cFv":8,
	"execute__11daSwLBall_cFv":9,
	"actionInit__11daSwLBall_cFv":10,
	"actionRun__11daSwLBall_cFv":11,
	"actionStop__11daSwLBall_cFv":12,
	"PutCrrPos__11daSwLBall_cFv":13,
	"_delete__11daSwLBall_cFv":14,
	"daSwLBall_Execute__FP11daSwLBall_c":15,
	"daSwLBall_Delete__FP11daSwLBall_c":16,
	"daSwLBall_Create__FP10fopAc_ac_c":17,
	"func_80D4F4AC":18,
	"data_80D4F4C8":19,
	"data_80D4F4CC":20,
	"lit_3723":21,
	"lit_3724":22,
	"lit_3725":23,
	"lit_3726":24,
	"lit_4000":25,
	"cNullVec__6Z2Calc":26,
	"lit_1787":27,
	"lit_3835":28,
	"lit_3836":29,
	"lit_3837":30,
	"l_func":31,
	"l_daSwLBall_Method":32,
	"g_profile_SwLBall":33,
	"l_target_info":34,
	"l_target_info_count":35,
	"data_80D4F5AC":36,
}

