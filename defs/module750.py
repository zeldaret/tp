#
# Generate By: dol2asm
# Module: 750
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_watchge",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_watchge",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".dtors",
	".data",
	".bss",
]

# Symbols
SYMBOLS = [
	{'addr':0x80D64260,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6428C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D642B8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D642D8,'size':8,'pad':0,'label':"draw__14daTagWatchGe_cFv",'name':"draw__14daTagWatchGe_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D642E0,'size':32,'pad':0,'label':"daTagWatchGe_Draw__FP14daTagWatchGe_c",'name':"daTagWatchGe_Draw__FP14daTagWatchGe_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64300,'size':56,'pad':0,'label':"s_watchge__FPvPv",'name':"s_watchge__FPvPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64338,'size':144,'pad':0,'label':"execute__14daTagWatchGe_cFv",'name':"execute__14daTagWatchGe_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D643C8,'size':32,'pad':0,'label':"daTagWatchGe_Execute__FP14daTagWatchGe_c",'name':"daTagWatchGe_Execute__FP14daTagWatchGe_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D643E8,'size':8,'pad':0,'label':"daTagWatchGe_IsDelete__FP14daTagWatchGe_c",'name':"daTagWatchGe_IsDelete__FP14daTagWatchGe_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D643F0,'size':8,'pad':0,'label':"daTagWatchGe_Delete__FP14daTagWatchGe_c",'name':"daTagWatchGe_Delete__FP14daTagWatchGe_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D643F8,'size':184,'pad':0,'label':"create__14daTagWatchGe_cFv",'name':"create__14daTagWatchGe_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D644B0,'size':32,'pad':0,'label':"daTagWatchGe_Create__FP14daTagWatchGe_c",'name':"daTagWatchGe_Create__FP14daTagWatchGe_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D644D0,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D644D4,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D644D8,'size':32,'pad':0,'label':"l_daTagWatchGe_Method",'name':"l_daTagWatchGe_Method",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D644F8,'size':48,'pad':0,'label':"g_profile_Tag_WatchGe",'name':"g_profile_Tag_WatchGe",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D64528,'size':4,'pad':0,'label':"m_group_count",'name':"m_group_count",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"draw__14daTagWatchGe_cFv":3,
	"daTagWatchGe_Draw__FP14daTagWatchGe_c":4,
	"s_watchge__FPvPv":5,
	"execute__14daTagWatchGe_cFv":6,
	"daTagWatchGe_Execute__FP14daTagWatchGe_c":7,
	"daTagWatchGe_IsDelete__FP14daTagWatchGe_c":8,
	"daTagWatchGe_Delete__FP14daTagWatchGe_c":9,
	"create__14daTagWatchGe_cFv":10,
	"daTagWatchGe_Create__FP14daTagWatchGe_c":11,
	"_ctors":12,
	"_dtors":13,
	"l_daTagWatchGe_Method":14,
	"g_profile_Tag_WatchGe":15,
	"m_group_count":16,
}

