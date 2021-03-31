#
# Generate By: dol2asm
# Module: 341
#

# Libraries
LIBRARIES = [
	"d/a/npc/d_a_npc_p2",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_npc_p2",
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
	{'addr':0x80A92B80,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80A92BAC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80A92BD8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80A92BF8,'size':8,'pad':0,'label':"daNpc_P2Create__FPv",'name':"daNpc_P2Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80A92C00,'size':8,'pad':0,'label':"daNpc_P2Delete__FPv",'name':"daNpc_P2Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80A92C08,'size':8,'pad':0,'label':"daNpc_P2Execute__FPv",'name':"daNpc_P2Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80A92C10,'size':8,'pad':0,'label':"daNpc_P2Draw__FPv",'name':"daNpc_P2Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80A92C18,'size':8,'pad':0,'label':"daNpc_P2IsDelete__FPv",'name':"daNpc_P2IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80A92C20,'size':4,'pad':0,'label':"data_80A92C20",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80A92C24,'size':4,'pad':0,'label':"data_80A92C24",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80A92C28,'size':32,'pad':0,'label':"daNpc_P2MethodTable",'name':"daNpc_P2MethodTable",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80A92C48,'size':48,'pad':0,'label':"g_profile_NPC_P2",'name':"g_profile_NPC_P2",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daNpc_P2Create__FPv":3,
	"daNpc_P2Delete__FPv":4,
	"daNpc_P2Execute__FPv":5,
	"daNpc_P2Draw__FPv":6,
	"daNpc_P2IsDelete__FPv":7,
	"data_80A92C20":8,
	"data_80A92C24":9,
	"daNpc_P2MethodTable":10,
	"g_profile_NPC_P2":11,
}

