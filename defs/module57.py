#
# Generate By: dol2asm
# Module: 57
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_attention",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_attention",
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
	{'addr':0x804D52A0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D52CC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D52F8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5318,'size':60,'pad':0,'label':"Create__8daAttp_cFv",'name':"Create__8daAttp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D5354,'size':88,'pad':0,'label':"create__8daAttp_cFv",'name':"create__8daAttp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D53AC,'size':736,'pad':0,'label':"execute__8daAttp_cFv",'name':"execute__8daAttp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D568C,'size':8,'pad':0,'label':"draw__8daAttp_cFv",'name':"draw__8daAttp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x804D5694,'size':8,'pad':0,'label':"_delete__8daAttp_cFv",'name':"_delete__8daAttp_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x804D569C,'size':32,'pad':0,'label':"daAttp_Draw__FP8daAttp_c",'name':"daAttp_Draw__FP8daAttp_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D56BC,'size':32,'pad':0,'label':"daAttp_Execute__FP8daAttp_c",'name':"daAttp_Execute__FP8daAttp_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D56DC,'size':32,'pad':0,'label':"daAttp_Delete__FP8daAttp_c",'name':"daAttp_Delete__FP8daAttp_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D56FC,'size':32,'pad':0,'label':"daAttp_Create__FP10fopAc_ac_c",'name':"daAttp_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804D571C,'size':4,'pad':0,'label':"data_804D571C",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804D5720,'size':4,'pad':0,'label':"data_804D5720",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804D5724,'size':2,'pad':2,'label':"l_dist_tbl",'name':"l_dist_tbl$3641",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804D5728,'size':4,'pad':0,'label':"lit_3772",'name':"@3772",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804D572C,'size':32,'pad':0,'label':"lit_3773",'name':"@3773",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804D574C,'size':32,'pad':0,'label':"l_daAttp_Method",'name':"l_daAttp_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804D576C,'size':48,'pad':0,'label':"g_profile_Tag_Attp",'name':"g_profile_Tag_Attp",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"Create__8daAttp_cFv":3,
	"create__8daAttp_cFv":4,
	"execute__8daAttp_cFv":5,
	"draw__8daAttp_cFv":6,
	"_delete__8daAttp_cFv":7,
	"daAttp_Draw__FP8daAttp_c":8,
	"daAttp_Execute__FP8daAttp_c":9,
	"daAttp_Delete__FP8daAttp_c":10,
	"daAttp_Create__FP10fopAc_ac_c":11,
	"data_804D571C":12,
	"data_804D5720":13,
	"l_dist_tbl":14,
	"lit_3772":15,
	"lit_3773":16,
	"l_daAttp_Method":17,
	"g_profile_Tag_Attp":18,
}

