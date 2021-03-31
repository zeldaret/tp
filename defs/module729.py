#
# Generate By: dol2asm
# Module: 729
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_mwait",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_mwait",
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
	{'addr':0x80D5BDA0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5BDCC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5BDF8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5BE18,'size':484,'pad':0,'label':"create__12daTagMwait_cFv",'name':"create__12daTagMwait_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5BFFC,'size':32,'pad':0,'label':"daTagMwait_Create__FP10fopAc_ac_c",'name':"daTagMwait_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5C01C,'size':100,'pad':0,'label':"__dt__12daTagMwait_cFv",'name':"__dt__12daTagMwait_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5C080,'size':40,'pad':0,'label':"daTagMwait_Delete__FP12daTagMwait_c",'name':"daTagMwait_Delete__FP12daTagMwait_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5C0A8,'size':1192,'pad':0,'label':"execute__12daTagMwait_cFv",'name':"execute__12daTagMwait_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5C550,'size':32,'pad':0,'label':"daTagMwait_Execute__FP12daTagMwait_c",'name':"daTagMwait_Execute__FP12daTagMwait_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5C570,'size':8,'pad':0,'label':"daTagMwait_Draw__FP12daTagMwait_c",'name':"daTagMwait_Draw__FP12daTagMwait_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D5C578,'size':4,'pad':0,'label':"data_80D5C578",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5C57C,'size':4,'pad':0,'label':"data_80D5C57C",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5C580,'size':4,'pad':0,'label':"lit_3841",'name':"@3841",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D5C584,'size':4,'pad':0,'label':"lit_3842",'name':"@3842",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D5C588,'size':4,'pad':0,'label':"lit_3843",'name':"@3843",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D5C58C,'size':4,'pad':0,'label':"lit_3844",'name':"@3844",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D5C590,'size':4,'pad':4,'label':"lit_3845",'name':"@3845",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D5C598,'size':8,'pad':0,'label':"lit_3847",'name':"@3847",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5C5A0,'size':4,'pad':4,'label':"lit_4006",'name':"@4006",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5C5A8,'size':8,'pad':0,'label':"lit_4007",'name':"@4007",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5C5B0,'size':8,'pad':0,'label':"lit_4008",'name':"@4008",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5C5B8,'size':8,'pad':0,'label':"lit_4009",'name':"@4009",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5C5C0,'size':4,'pad':0,'label':"lit_4010",'name':"@4010",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D5C5C4,'size':32,'pad':0,'label':"l_daTagMwait_Method",'name':"l_daTagMwait_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D5C5E4,'size':48,'pad':0,'label':"g_profile_Tag_Mwait",'name':"g_profile_Tag_Mwait",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create__12daTagMwait_cFv":3,
	"daTagMwait_Create__FP10fopAc_ac_c":4,
	"__dt__12daTagMwait_cFv":5,
	"daTagMwait_Delete__FP12daTagMwait_c":6,
	"execute__12daTagMwait_cFv":7,
	"daTagMwait_Execute__FP12daTagMwait_c":8,
	"daTagMwait_Draw__FP12daTagMwait_c":9,
	"data_80D5C578":10,
	"data_80D5C57C":11,
	"lit_3841":12,
	"lit_3842":13,
	"lit_3843":14,
	"lit_3844":15,
	"lit_3845":16,
	"lit_3847":17,
	"lit_4006":18,
	"lit_4007":19,
	"lit_4008":20,
	"lit_4009":21,
	"lit_4010":22,
	"l_daTagMwait_Method":23,
	"g_profile_Tag_Mwait":24,
}

