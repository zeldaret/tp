#
# Generate By: dol2asm
# Module: 719
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_escape",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_escape",
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
	{'addr':0x80D58760,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5878C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D587B8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D587D8,'size':80,'pad':0,'label':"daTagEscape_Create__FP10fopAc_ac_c",'name':"daTagEscape_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D58828,'size':48,'pad':0,'label':"daTagEscape_Delete__FP13daTagEscape_c",'name':"daTagEscape_Delete__FP13daTagEscape_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D58858,'size':4,'pad':0,'label':"data_80D58858",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5885C,'size':4,'pad':0,'label':"data_80D5885C",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D58860,'size':32,'pad':0,'label':"l_daTagEscape_Method",'name':"l_daTagEscape_Method",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D58880,'size':48,'pad':0,'label':"g_profile_Tag_Escape",'name':"g_profile_Tag_Escape",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daTagEscape_Create__FP10fopAc_ac_c":3,
	"daTagEscape_Delete__FP13daTagEscape_c":4,
	"data_80D58858":5,
	"data_80D5885C":6,
	"l_daTagEscape_Method":7,
	"g_profile_Tag_Escape":8,
}

