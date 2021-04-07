#
# Generate By: dol2asm
# Module: 735
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_ret_room",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_ret_room",
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
	{'addr':0x80D5EE20,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5EE4C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5EE78,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5EE98,'size':60,'pad':0,'label':"__ct__12daTagRetRm_cFv",'name':"__ct__12daTagRetRm_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5EED4,'size':96,'pad':0,'label':"__dt__12daTagRetRm_cFv",'name':"__dt__12daTagRetRm_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5EF34,'size':88,'pad':0,'label':"create__12daTagRetRm_cFv",'name':"create__12daTagRetRm_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5EF8C,'size':8,'pad':0,'label':"Delete__12daTagRetRm_cFv",'name':"Delete__12daTagRetRm_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D5EF94,'size':8,'pad':0,'label':"draw__12daTagRetRm_cFv",'name':"draw__12daTagRetRm_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D5EF9C,'size':116,'pad':0,'label':"execute__12daTagRetRm_cFv",'name':"execute__12daTagRetRm_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5F010,'size':64,'pad':0,'label':"init__12daTagRetRm_cFv",'name':"init__12daTagRetRm_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5F050,'size':252,'pad':0,'label':"chkPlyrInTag__12daTagRetRm_cFv",'name':"chkPlyrInTag__12daTagRetRm_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5F14C,'size':84,'pad':0,'label':"daTagRetRm_create__FP12daTagRetRm_c",'name':"daTagRetRm_create__FP12daTagRetRm_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5F1A0,'size':32,'pad':0,'label':"daTagRetRm_Delete__FP12daTagRetRm_c",'name':"daTagRetRm_Delete__FP12daTagRetRm_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5F1C0,'size':32,'pad':0,'label':"daTagRetRm_execute__FP12daTagRetRm_c",'name':"daTagRetRm_execute__FP12daTagRetRm_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5F1E0,'size':32,'pad':0,'label':"daTagRetRm_draw__FP12daTagRetRm_c",'name':"daTagRetRm_draw__FP12daTagRetRm_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5F200,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D5F204,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D5F208,'size':4,'pad':0,'label':"lit_3682",'name':"@3682",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D5F20C,'size':4,'pad':0,'label':"lit_3683",'name':"@3683",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D5F210,'size':4,'pad':0,'label':"lit_3718",'name':"@3718",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5F214,'size':32,'pad':0,'label':"daTagRetRm_METHODS",'name':"daTagRetRm_METHODS",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D5F234,'size':48,'pad':0,'label':"g_profile_Tag_RetRoom",'name':"g_profile_Tag_RetRoom",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D5F264,'size':12,'pad':0,'label':"__vt__12daTagRetRm_c",'name':"__vt__12daTagRetRm_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__ct__12daTagRetRm_cFv":3,
	"__dt__12daTagRetRm_cFv":4,
	"create__12daTagRetRm_cFv":5,
	"Delete__12daTagRetRm_cFv":6,
	"draw__12daTagRetRm_cFv":7,
	"execute__12daTagRetRm_cFv":8,
	"init__12daTagRetRm_cFv":9,
	"chkPlyrInTag__12daTagRetRm_cFv":10,
	"daTagRetRm_create__FP12daTagRetRm_c":11,
	"daTagRetRm_Delete__FP12daTagRetRm_c":12,
	"daTagRetRm_execute__FP12daTagRetRm_c":13,
	"daTagRetRm_draw__FP12daTagRetRm_c":14,
	"_ctors":15,
	"_dtors":16,
	"lit_3682":17,
	"lit_3683":18,
	"lit_3718":19,
	"daTagRetRm_METHODS":20,
	"g_profile_Tag_RetRoom":21,
	"__vt__12daTagRetRm_c":22,
}

