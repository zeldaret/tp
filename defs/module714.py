#
# Generate By: dol2asm
# Module: 714
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_arena",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_arena",
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
	{'addr':0x80D55C60,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D55C8C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D55CB8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D55CD8,'size':80,'pad':0,'label':"daTagArena_Create__FP10fopAc_ac_c",'name':"daTagArena_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D55D28,'size':48,'pad':0,'label':"daTagArena_Delete__FP12daTagArena_c",'name':"daTagArena_Delete__FP12daTagArena_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D55D58,'size':4,'pad':0,'label':"data_80D55D58",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D55D5C,'size':4,'pad':0,'label':"data_80D55D5C",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D55D60,'size':32,'pad':0,'label':"l_daTagArena_Method",'name':"l_daTagArena_Method",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D55D80,'size':48,'pad':0,'label':"g_profile_Tag_Arena",'name':"g_profile_Tag_Arena",'lib':-1,'tu':3,'section':3,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daTagArena_Create__FP10fopAc_ac_c":3,
	"daTagArena_Delete__FP12daTagArena_c":4,
	"data_80D55D58":5,
	"data_80D55D5C":6,
	"l_daTagArena_Method":7,
	"g_profile_Tag_Arena":8,
}

