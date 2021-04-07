#
# Generate By: dol2asm
# Module: 730
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_myna2",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_myna2",
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
	{'addr':0x80D5C620,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5C64C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5C678,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5C698,'size':112,'pad':0,'label':"create__12daTagMyna2_cFv",'name':"create__12daTagMyna2_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5C708,'size':672,'pad':0,'label':"execute__12daTagMyna2_cFv",'name':"execute__12daTagMyna2_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5C9A8,'size':32,'pad':0,'label':"daTagMyna2_Create__FP10fopAc_ac_c",'name':"daTagMyna2_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5C9C8,'size':32,'pad':0,'label':"daTagMyna2_Execute__FP12daTagMyna2_c",'name':"daTagMyna2_Execute__FP12daTagMyna2_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5C9E8,'size':48,'pad':0,'label':"daTagMyna2_Delete__FP12daTagMyna2_c",'name':"daTagMyna2_Delete__FP12daTagMyna2_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5CA18,'size':28,'pad':0,'label':"func_80D5CA18",'name':"cLib_calcTimer<s>__FPs",'lib':-1,'tu':3,'section':0,'class_template':True,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5CA34,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D5CA38,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D5CA3C,'size':4,'pad':4,'label':"lit_3743",'name':"@3743",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5CA44,'size':8,'pad':0,'label':"lit_3744",'name':"@3744",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5CA4C,'size':8,'pad':0,'label':"lit_3745",'name':"@3745",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5CA54,'size':8,'pad':0,'label':"lit_3746",'name':"@3746",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5CA5C,'size':4,'pad':0,'label':"lit_3747",'name':"@3747",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D5CA60,'size':4,'pad':0,'label':"lit_3748",'name':"@3748",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D5CA64,'size':32,'pad':0,'label':"l_daTagMyna2_Method",'name':"l_daTagMyna2_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D5CA84,'size':48,'pad':0,'label':"g_profile_TAG_MYNA2",'name':"g_profile_TAG_MYNA2",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create__12daTagMyna2_cFv":3,
	"execute__12daTagMyna2_cFv":4,
	"daTagMyna2_Create__FP10fopAc_ac_c":5,
	"daTagMyna2_Execute__FP12daTagMyna2_c":6,
	"daTagMyna2_Delete__FP12daTagMyna2_c":7,
	"func_80D5CA18":8,
	"_ctors":9,
	"_dtors":10,
	"lit_3743":11,
	"lit_3744":12,
	"lit_3745":13,
	"lit_3746":14,
	"lit_3747":15,
	"lit_3748":16,
	"l_daTagMyna2_Method":17,
	"g_profile_TAG_MYNA2":18,
}

