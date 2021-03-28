#
# Generate By: dol2asm
# Module: 721
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_gra",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_gra",
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
	{'addr':0x80D595E0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5960C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D59638,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D59658,'size':144,'pad':0,'label':"daTagGra_Create__FP10fopAc_ac_c",'name':"daTagGra_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D596E8,'size':48,'pad':0,'label':"daTagGra_Delete__FP10daTagGra_c",'name':"daTagGra_Delete__FP10daTagGra_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D59718,'size':4,'pad':0,'label':"data_80D59718",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5971C,'size':4,'pad':0,'label':"data_80D5971C",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D59720,'size':32,'pad':0,'label':"l_daTagGra_Method",'name':"l_daTagGra_Method",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D59740,'size':48,'pad':0,'label':"g_profile_TAG_GRA",'name':"g_profile_TAG_GRA",'lib':-1,'tu':3,'section':3,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daTagGra_Create__FP10fopAc_ac_c":3,
	"daTagGra_Delete__FP10daTagGra_c":4,
	"data_80D59718":5,
	"data_80D5971C":6,
	"l_daTagGra_Method":7,
	"g_profile_TAG_GRA":8,
}

