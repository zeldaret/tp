#
# Generate By: dol2asm
# Module: 336
#

# Libraries
LIBRARIES = [
	"d/a/npc/d_a_npc_mk",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_npc_mk",
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
	{'addr':0x80A73D60,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80A73D8C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80A73DB8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80A73DD8,'size':8,'pad':0,'label':"daNpc_Mk_Create__FPv",'name':"daNpc_Mk_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80A73DE0,'size':8,'pad':0,'label':"daNpc_Mk_Delete__FPv",'name':"daNpc_Mk_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80A73DE8,'size':8,'pad':0,'label':"daNpc_Mk_Execute__FPv",'name':"daNpc_Mk_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80A73DF0,'size':8,'pad':0,'label':"daNpc_Mk_Draw__FPv",'name':"daNpc_Mk_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80A73DF8,'size':8,'pad':0,'label':"daNpc_Mk_IsDelete__FPv",'name':"daNpc_Mk_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80A73E00,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80A73E04,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80A73E08,'size':32,'pad':0,'label':"daNpc_Mk_MethodTable",'name':"daNpc_Mk_MethodTable",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80A73E28,'size':48,'pad':0,'label':"g_profile_NPC_MK",'name':"g_profile_NPC_MK",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daNpc_Mk_Create__FPv":3,
	"daNpc_Mk_Delete__FPv":4,
	"daNpc_Mk_Execute__FPv":5,
	"daNpc_Mk_Draw__FPv":6,
	"daNpc_Mk_IsDelete__FPv":7,
	"_ctors":8,
	"_dtors":9,
	"daNpc_Mk_MethodTable":10,
	"g_profile_NPC_MK":11,
}

