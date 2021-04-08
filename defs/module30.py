#
# Generate By: dol2asm
# Module: 30
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_event",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_event",
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
	{'addr':0x8048ACC0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048ACEC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048AD18,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048AD38,'size':48,'pad':0,'label':"daTag_getBk__FUl",'name':"daTag_getBk__FUl",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048AD68,'size':12,'pad':0,'label':"getEventNo__13daTag_Event_cFv",'name':"getEventNo__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048AD74,'size':12,'pad':0,'label':"getSwbit__13daTag_Event_cFv",'name':"getSwbit__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048AD80,'size':12,'pad':0,'label':"getSwbit2__13daTag_Event_cFv",'name':"getSwbit2__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048AD8C,'size':12,'pad':0,'label':"getType__13daTag_Event_cFv",'name':"getType__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048AD98,'size':12,'pad':0,'label':"getInvalidEventFlag__13daTag_Event_cFv",'name':"getInvalidEventFlag__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048ADA4,'size':12,'pad':0,'label':"getAreaType__13daTag_Event_cFv",'name':"getAreaType__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048ADB0,'size':12,'pad':0,'label':"getValidEventFlag__13daTag_Event_cFv",'name':"getValidEventFlag__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048ADBC,'size':48,'pad':0,'label':"horseRodeo__13daTag_Event_cFv",'name':"horseRodeo__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048ADEC,'size':256,'pad':0,'label':"arrivalTerms__13daTag_Event_cFv",'name':"arrivalTerms__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048AEEC,'size':12,'pad':0,'label':"demoInitProc__13daTag_Event_cFv",'name':"demoInitProc__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048AEF8,'size':4,'pad':0,'label':"demoEndProc__13daTag_Event_cFv",'name':"demoEndProc__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048AEFC,'size':4,'pad':0,'label':"demoProc__13daTag_Event_cFv",'name':"demoProc__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048AF00,'size':484,'pad':0,'label':"create__13daTag_Event_cFv",'name':"create__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B0E4,'size':204,'pad':0,'label':"actionNext__13daTag_Event_cFv",'name':"actionNext__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B1B0,'size':184,'pad':0,'label':"actionEvent__13daTag_Event_cFv",'name':"actionEvent__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B268,'size':272,'pad':0,'label':"actionReady__13daTag_Event_cFv",'name':"actionReady__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B378,'size':412,'pad':0,'label':"checkArea__13daTag_Event_cFv",'name':"checkArea__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B514,'size':180,'pad':0,'label':"actionHunt__13daTag_Event_cFv",'name':"actionHunt__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B5C8,'size':44,'pad':0,'label':"actionArrival__13daTag_Event_cFv",'name':"actionArrival__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B5F4,'size':8,'pad':0,'label':"actionWait__13daTag_Event_cFv",'name':"actionWait__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048B5FC,'size':216,'pad':0,'label':"actionHunt2__13daTag_Event_cFv",'name':"actionHunt2__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B6D4,'size':176,'pad':0,'label':"execute__13daTag_Event_cFv",'name':"execute__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B784,'size':8,'pad':0,'label':"draw__13daTag_Event_cFv",'name':"draw__13daTag_Event_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048B78C,'size':32,'pad':0,'label':"daTag_Event_Draw__FP13daTag_Event_c",'name':"daTag_Event_Draw__FP13daTag_Event_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B7AC,'size':36,'pad':0,'label':"daTag_Event_Execute__FP13daTag_Event_c",'name':"daTag_Event_Execute__FP13daTag_Event_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B7D0,'size':8,'pad':0,'label':"daTag_Event_IsDelete__FP13daTag_Event_c",'name':"daTag_Event_IsDelete__FP13daTag_Event_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048B7D8,'size':48,'pad':0,'label':"daTag_Event_Delete__FP13daTag_Event_c",'name':"daTag_Event_Delete__FP13daTag_Event_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B808,'size':32,'pad':0,'label':"daTag_Event_Create__FP10fopAc_ac_c",'name':"daTag_Event_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B828,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8048B82C,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8048B830,'size':4,'pad':0,'label':"lit_3814",'name':"@3814",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8048B834,'size':4,'pad':0,'label':"lit_3815",'name':"@3815",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8048B838,'size':4,'pad':0,'label':"lit_3954",'name':"@3954",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8048B83C,'size':4,'pad':0,'label':"lit_3955",'name':"@3955",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048B840,'size':3,'pad':0,'label':"d_a_tag_event__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x8048B844,'size':32,'pad':0,'label':"l_daTag_Event_Method",'name':"l_daTag_Event_Method",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048B864,'size':48,'pad':0,'label':"g_profile_TAG_EVENT",'name':"g_profile_TAG_EVENT",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daTag_getBk__FUl":3,
	"getEventNo__13daTag_Event_cFv":4,
	"getSwbit__13daTag_Event_cFv":5,
	"getSwbit2__13daTag_Event_cFv":6,
	"getType__13daTag_Event_cFv":7,
	"getInvalidEventFlag__13daTag_Event_cFv":8,
	"getAreaType__13daTag_Event_cFv":9,
	"getValidEventFlag__13daTag_Event_cFv":10,
	"horseRodeo__13daTag_Event_cFv":11,
	"arrivalTerms__13daTag_Event_cFv":12,
	"demoInitProc__13daTag_Event_cFv":13,
	"demoEndProc__13daTag_Event_cFv":14,
	"demoProc__13daTag_Event_cFv":15,
	"create__13daTag_Event_cFv":16,
	"actionNext__13daTag_Event_cFv":17,
	"actionEvent__13daTag_Event_cFv":18,
	"actionReady__13daTag_Event_cFv":19,
	"checkArea__13daTag_Event_cFv":20,
	"actionHunt__13daTag_Event_cFv":21,
	"actionArrival__13daTag_Event_cFv":22,
	"actionWait__13daTag_Event_cFv":23,
	"actionHunt2__13daTag_Event_cFv":24,
	"execute__13daTag_Event_cFv":25,
	"draw__13daTag_Event_cFv":26,
	"daTag_Event_Draw__FP13daTag_Event_c":27,
	"daTag_Event_Execute__FP13daTag_Event_c":28,
	"daTag_Event_IsDelete__FP13daTag_Event_c":29,
	"daTag_Event_Delete__FP13daTag_Event_c":30,
	"daTag_Event_Create__FP10fopAc_ac_c":31,
	"_ctors":32,
	"_dtors":33,
	"lit_3814":34,
	"lit_3815":35,
	"lit_3954":36,
	"lit_3955":37,
	"d_a_tag_event__stringBase0":38,
	"l_daTag_Event_Method":39,
	"g_profile_TAG_EVENT":40,
}

