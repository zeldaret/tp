#
# Generate By: dol2asm
# Module: 754
#

# Libraries
LIBRARIES = [
	"d/a/d_a_talk",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_talk",
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
	{'addr':0x80D66300,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6632C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D66358,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D66378,'size':108,'pad':0,'label':"__dt__8daTalk_cFv",'name':"__dt__8daTalk_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D663E4,'size':200,'pad':0,'label':"create__8daTalk_cFv",'name':"create__8daTalk_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D664AC,'size':432,'pad':0,'label':"execute__8daTalk_cFv",'name':"execute__8daTalk_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6665C,'size':8,'pad':0,'label':"draw__8daTalk_cFv",'name':"draw__8daTalk_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D66664,'size':36,'pad':0,'label':"setStatus__8daTalk_cFUs",'name':"setStatus__8daTalk_cFUs",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D66688,'size':32,'pad':0,'label':"getStatus__8daTalk_cFv",'name':"getStatus__8daTalk_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D666A8,'size':60,'pad':0,'label':"messageSet__8daTalk_cFv",'name':"messageSet__8daTalk_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D666E4,'size':32,'pad':0,'label':"daTalk_Create__FP10fopAc_ac_c",'name':"daTalk_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D66704,'size':40,'pad':0,'label':"daTalk_Delete__FP8daTalk_c",'name':"daTalk_Delete__FP8daTalk_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6672C,'size':32,'pad':0,'label':"daTalk_Execute__FP8daTalk_c",'name':"daTalk_Execute__FP8daTalk_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6674C,'size':32,'pad':0,'label':"daTalk_Draw__FP8daTalk_c",'name':"daTalk_Draw__FP8daTalk_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6676C,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D66770,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D66774,'size':32,'pad':0,'label':"l_daTalk_Method",'name':"l_daTalk_Method",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D66794,'size':48,'pad':0,'label':"g_profile_TALK",'name':"g_profile_TALK",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__dt__8daTalk_cFv":3,
	"create__8daTalk_cFv":4,
	"execute__8daTalk_cFv":5,
	"draw__8daTalk_cFv":6,
	"setStatus__8daTalk_cFUs":7,
	"getStatus__8daTalk_cFv":8,
	"messageSet__8daTalk_cFv":9,
	"daTalk_Create__FP10fopAc_ac_c":10,
	"daTalk_Delete__FP8daTalk_c":11,
	"daTalk_Execute__FP8daTalk_c":12,
	"daTalk_Draw__FP8daTalk_c":13,
	"_ctors":14,
	"_dtors":15,
	"l_daTalk_Method":16,
	"g_profile_TALK":17,
}

