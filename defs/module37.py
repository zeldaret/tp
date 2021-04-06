#
# Generate By: dol2asm
# Module: 37
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_mist",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_mist",
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
	{'addr':0x8048F1E0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F20C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F238,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F258,'size':108,'pad':0,'label':"offSw__11daTagMist_cFv",'name':"offSw__11daTagMist_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F2C4,'size':76,'pad':0,'label':"onMySw__11daTagMist_cFv",'name':"onMySw__11daTagMist_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F310,'size':96,'pad':0,'label':"isMySw__11daTagMist_cFv",'name':"isMySw__11daTagMist_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F370,'size':212,'pad':0,'label':"Create__11daTagMist_cFv",'name':"Create__11daTagMist_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F444,'size':212,'pad':0,'label':"create__11daTagMist_cFv",'name':"create__11daTagMist_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F518,'size':60,'pad':0,'label':"__dt__4cXyzFv",'name':"__dt__4cXyzFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F554,'size':4,'pad':0,'label':"__ct__4cXyzFv",'name':"__ct__4cXyzFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048F558,'size':312,'pad':0,'label':"execute__11daTagMist_cFv",'name':"execute__11daTagMist_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F690,'size':8,'pad':0,'label':"_delete__11daTagMist_cFv",'name':"_delete__11daTagMist_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048F698,'size':32,'pad':0,'label':"daTagMist_Execute__FP11daTagMist_c",'name':"daTagMist_Execute__FP11daTagMist_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F6B8,'size':32,'pad':0,'label':"daTagMist_Delete__FP11daTagMist_c",'name':"daTagMist_Delete__FP11daTagMist_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F6D8,'size':32,'pad':0,'label':"daTagMist_Create__FP10fopAc_ac_c",'name':"daTagMist_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F6F8,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8048F6FC,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8048F700,'size':4,'pad':0,'label':"lit_3678",'name':"@3678",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8048F704,'size':4,'pad':0,'label':"lit_3679",'name':"@3679",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8048F708,'size':4,'pad':0,'label':"lit_3680",'name':"@3680",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048F70C,'size':32,'pad':0,'label':"l_daTagMist_Method",'name':"l_daTagMist_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048F72C,'size':48,'pad':0,'label':"g_profile_Tag_Mist",'name':"g_profile_Tag_Mist",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"offSw__11daTagMist_cFv":3,
	"onMySw__11daTagMist_cFv":4,
	"isMySw__11daTagMist_cFv":5,
	"Create__11daTagMist_cFv":6,
	"create__11daTagMist_cFv":7,
	"__dt__4cXyzFv":8,
	"__ct__4cXyzFv":9,
	"execute__11daTagMist_cFv":10,
	"_delete__11daTagMist_cFv":11,
	"daTagMist_Execute__FP11daTagMist_c":12,
	"daTagMist_Delete__FP11daTagMist_c":13,
	"daTagMist_Create__FP10fopAc_ac_c":14,
	"_ctors":15,
	"_dtors":16,
	"lit_3678":17,
	"lit_3679":18,
	"lit_3680":19,
	"l_daTagMist_Method":20,
	"g_profile_Tag_Mist":21,
}

