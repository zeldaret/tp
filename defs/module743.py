#
# Generate By: dol2asm
# Module: 743
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_smk_emt",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_smk_emt",
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
	{'addr':0x80D61260,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6128C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D612B8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D612D8,'size':76,'pad':0,'label':"__ct__13daTagSmkEmt_cFv",'name':"__ct__13daTagSmkEmt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D61324,'size':96,'pad':0,'label':"__dt__13daTagSmkEmt_cFv",'name':"__dt__13daTagSmkEmt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D61384,'size':88,'pad':0,'label':"create__13daTagSmkEmt_cFv",'name':"create__13daTagSmkEmt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D613DC,'size':36,'pad':0,'label':"Delete__13daTagSmkEmt_cFv",'name':"Delete__13daTagSmkEmt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D61400,'size':8,'pad':0,'label':"draw__13daTagSmkEmt_cFv",'name':"draw__13daTagSmkEmt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D61408,'size':8,'pad':0,'label':"execute__13daTagSmkEmt_cFv",'name':"execute__13daTagSmkEmt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D61410,'size':240,'pad':0,'label':"createSmkEmt__13daTagSmkEmt_cFv",'name':"createSmkEmt__13daTagSmkEmt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D61500,'size':68,'pad':0,'label':"deleteSmkEmt__13daTagSmkEmt_cFv",'name':"deleteSmkEmt__13daTagSmkEmt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D61544,'size':84,'pad':0,'label':"daTagSmkEmt_create__FP13daTagSmkEmt_c",'name':"daTagSmkEmt_create__FP13daTagSmkEmt_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D61598,'size':32,'pad':0,'label':"daTagSmkEmt_Delete__FP13daTagSmkEmt_c",'name':"daTagSmkEmt_Delete__FP13daTagSmkEmt_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D615B8,'size':32,'pad':0,'label':"daTagSmkEmt_execute__FP13daTagSmkEmt_c",'name':"daTagSmkEmt_execute__FP13daTagSmkEmt_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D615D8,'size':32,'pad':0,'label':"daTagSmkEmt_draw__FP13daTagSmkEmt_c",'name':"daTagSmkEmt_draw__FP13daTagSmkEmt_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D615F8,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D615FC,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D61600,'size':6,'pad':2,'label':"PARTICLE_NAME",'name':"PARTICLE_NAME$3654",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D61608,'size':4,'pad':0,'label':"lit_3677",'name':"@3677",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D6160C,'size':32,'pad':0,'label':"daTagSmkEmt_METHODS",'name':"daTagSmkEmt_METHODS",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D6162C,'size':48,'pad':0,'label':"g_profile_Tag_SmkEmt",'name':"g_profile_Tag_SmkEmt",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D6165C,'size':12,'pad':0,'label':"__vt__13daTagSmkEmt_c",'name':"__vt__13daTagSmkEmt_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__ct__13daTagSmkEmt_cFv":3,
	"__dt__13daTagSmkEmt_cFv":4,
	"create__13daTagSmkEmt_cFv":5,
	"Delete__13daTagSmkEmt_cFv":6,
	"draw__13daTagSmkEmt_cFv":7,
	"execute__13daTagSmkEmt_cFv":8,
	"createSmkEmt__13daTagSmkEmt_cFv":9,
	"deleteSmkEmt__13daTagSmkEmt_cFv":10,
	"daTagSmkEmt_create__FP13daTagSmkEmt_c":11,
	"daTagSmkEmt_Delete__FP13daTagSmkEmt_c":12,
	"daTagSmkEmt_execute__FP13daTagSmkEmt_c":13,
	"daTagSmkEmt_draw__FP13daTagSmkEmt_c":14,
	"_ctors":15,
	"_dtors":16,
	"PARTICLE_NAME":17,
	"lit_3677":18,
	"daTagSmkEmt_METHODS":19,
	"g_profile_Tag_SmkEmt":20,
	"__vt__13daTagSmkEmt_c":21,
}

