#
# Generate By: dol2asm
# Module: 120
#

# Libraries
LIBRARIES = [
	"d/a/d_a_swc00",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"unknown_translation_unit_bss",
	"d_a_swc00",
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
	{'addr':0x805A1380,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A13AC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A13D8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A13F8,'size':484,'pad':0,'label':"hitCheck__FP9daSwc00_c",'name':"hitCheck__FP9daSwc00_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A15DC,'size':32,'pad':0,'label':"daSwc00_Execute__FP9daSwc00_c",'name':"daSwc00_Execute__FP9daSwc00_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A15FC,'size':748,'pad':0,'label':"execute__9daSwc00_cFv",'name':"execute__9daSwc00_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A18E8,'size':188,'pad':0,'label':"event_proc_call__9daSwc00_cFv",'name':"event_proc_call__9daSwc00_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A19A4,'size':132,'pad':0,'label':"actionWait__9daSwc00_cFv",'name':"actionWait__9daSwc00_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1A28,'size':108,'pad':0,'label':"actionOrderEvent__9daSwc00_cFv",'name':"actionOrderEvent__9daSwc00_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1A94,'size':92,'pad':0,'label':"actionEvent__9daSwc00_cFv",'name':"actionEvent__9daSwc00_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1AF0,'size':44,'pad':0,'label':"actionDead__9daSwc00_cFv",'name':"actionDead__9daSwc00_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1B1C,'size':8,'pad':0,'label':"daSwc00_IsDelete__FP9daSwc00_c",'name':"daSwc00_IsDelete__FP9daSwc00_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x805A1B24,'size':8,'pad':0,'label':"daSwc00_Delete__FP9daSwc00_c",'name':"daSwc00_Delete__FP9daSwc00_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x805A1B2C,'size':608,'pad':0,'label':"daSwc00_Create__FP10fopAc_ac_c",'name':"daSwc00_Create__FP10fopAc_ac_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1D8C,'size':4,'pad':0,'label':"data_805A1D8C",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A1D90,'size':4,'pad':0,'label':"data_805A1D90",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A1D94,'size':4,'pad':0,'label':"lit_3708",'name':"@3708",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A1D98,'size':4,'pad':0,'label':"lit_3991",'name':"@3991",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A1D9C,'size':4,'pad':0,'label':"lit_3992",'name':"@3992",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A1DA0,'size':4,'pad':0,'label':"lit_3993",'name':"@3993",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A1DA4,'size':4,'pad':0,'label':"lit_3994",'name':"@3994",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A1DA8,'size':4,'pad':0,'label':"lit_3995",'name':"@3995",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A1DAC,'size':38,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x805A1DD4,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A1DE0,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A1DF4,'size':64,'pad':0,'label':"lit_3812",'name':"@3812",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A1E34,'size':12,'pad':0,'label':"lit_3820",'name':"@3820",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A1E40,'size':12,'pad':0,'label':"lit_3821",'name':"@3821",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A1E4C,'size':12,'pad':0,'label':"lit_3822",'name':"@3822",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A1E58,'size':12,'pad':0,'label':"lit_3823",'name':"@3823",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A1E64,'size':48,'pad':0,'label':"data_805A1E64",'name':"l_func$3819",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A1E94,'size':64,'pad':0,'label':"lit_3996",'name':"@3996",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A1ED4,'size':32,'pad':0,'label':"l_daSwc00_Method",'name':"l_daSwc00_Method",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A1EF4,'size':48,'pad':0,'label':"g_profile_SWC00",'name':"g_profile_SWC00",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A1F28,'size':4,'pad':0,'label':"data_805A1F28",'name':None,'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"hitCheck__FP9daSwc00_c":3,
	"daSwc00_Execute__FP9daSwc00_c":4,
	"execute__9daSwc00_cFv":5,
	"event_proc_call__9daSwc00_cFv":6,
	"actionWait__9daSwc00_cFv":7,
	"actionOrderEvent__9daSwc00_cFv":8,
	"actionEvent__9daSwc00_cFv":9,
	"actionDead__9daSwc00_cFv":10,
	"daSwc00_IsDelete__FP9daSwc00_c":11,
	"daSwc00_Delete__FP9daSwc00_c":12,
	"daSwc00_Create__FP10fopAc_ac_c":13,
	"data_805A1D8C":14,
	"data_805A1D90":15,
	"lit_3708":16,
	"lit_3991":17,
	"lit_3992":18,
	"lit_3993":19,
	"lit_3994":20,
	"lit_3995":21,
	"stringBase0":22,
	"cNullVec__6Z2Calc":23,
	"lit_1787":24,
	"lit_3812":25,
	"lit_3820":26,
	"lit_3821":27,
	"lit_3822":28,
	"lit_3823":29,
	"data_805A1E64":30,
	"lit_3996":31,
	"l_daSwc00_Method":32,
	"g_profile_SWC00":33,
	"data_805A1F28":34,
}

