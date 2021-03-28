#
# Generate By: dol2asm
# Module: 58
#

# Libraries
LIBRARIES = [
	"d/a/d_a_alldie",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_alldie",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".dtors",
	".data",
]

# Symbols
SYMBOLS = [
	{'addr':0x804D57A0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D57CC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D57F8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5818,'size':12,'pad':0,'label':"getEventNo__10daAlldie_cFv",'name':"getEventNo__10daAlldie_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5824,'size':12,'pad':0,'label':"getSwbit__10daAlldie_cFv",'name':"getSwbit__10daAlldie_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5830,'size':8,'pad':0,'label':"actionWait__10daAlldie_cFv",'name':"actionWait__10daAlldie_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x804D5838,'size':80,'pad':0,'label':"actionCheck__10daAlldie_cFv",'name':"actionCheck__10daAlldie_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5888,'size':176,'pad':0,'label':"actionTimer__10daAlldie_cFv",'name':"actionTimer__10daAlldie_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5938,'size':104,'pad':0,'label':"actionOrder__10daAlldie_cFv",'name':"actionOrder__10daAlldie_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D59A0,'size':164,'pad':0,'label':"actionEvent__10daAlldie_cFv",'name':"actionEvent__10daAlldie_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5A44,'size':204,'pad':0,'label':"actionNext__10daAlldie_cFv",'name':"actionNext__10daAlldie_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5B10,'size':124,'pad':0,'label':"execute__10daAlldie_cFv",'name':"execute__10daAlldie_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5B8C,'size':8,'pad':0,'label':"daAlldie_Draw__FP10daAlldie_c",'name':"daAlldie_Draw__FP10daAlldie_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x804D5B94,'size':36,'pad':0,'label':"daAlldie_Execute__FP10daAlldie_c",'name':"daAlldie_Execute__FP10daAlldie_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5BB8,'size':8,'pad':0,'label':"daAlldie_IsDelete__FP10daAlldie_c",'name':"daAlldie_IsDelete__FP10daAlldie_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x804D5BC0,'size':48,'pad':0,'label':"daAlldie_Delete__FP10daAlldie_c",'name':"daAlldie_Delete__FP10daAlldie_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5BF0,'size':300,'pad':0,'label':"daAlldie_Create__FP10fopAc_ac_c",'name':"daAlldie_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5D1C,'size':4,'pad':0,'label':"data_804D5D1C",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804D5D20,'size':4,'pad':0,'label':"data_804D5D20",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804D5D24,'size':32,'pad':0,'label':"l_daAlldie_Method",'name':"l_daAlldie_Method",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804D5D44,'size':48,'pad':0,'label':"g_profile_ALLDIE",'name':"g_profile_ALLDIE",'lib':-1,'tu':3,'section':3,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"getEventNo__10daAlldie_cFv":3,
	"getSwbit__10daAlldie_cFv":4,
	"actionWait__10daAlldie_cFv":5,
	"actionCheck__10daAlldie_cFv":6,
	"actionTimer__10daAlldie_cFv":7,
	"actionOrder__10daAlldie_cFv":8,
	"actionEvent__10daAlldie_cFv":9,
	"actionNext__10daAlldie_cFv":10,
	"execute__10daAlldie_cFv":11,
	"daAlldie_Draw__FP10daAlldie_c":12,
	"daAlldie_Execute__FP10daAlldie_c":13,
	"daAlldie_IsDelete__FP10daAlldie_c":14,
	"daAlldie_Delete__FP10daAlldie_c":15,
	"daAlldie_Create__FP10fopAc_ac_c":16,
	"data_804D5D1C":17,
	"data_804D5D20":18,
	"l_daAlldie_Method":19,
	"g_profile_ALLDIE":20,
}

