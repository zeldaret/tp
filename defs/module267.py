#
# Generate By: dol2asm
# Module: 267
#

# Libraries
LIBRARIES = [
	"d/a/kytag/d_a_kytag02",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_kytag02",
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
	{'addr':0x80855A40,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80855A6C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80855A98,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80855AB8,'size':8,'pad':0,'label':"daKytag02_Draw__FP13kytag02_class",'name':"daKytag02_Draw__FP13kytag02_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80855AC0,'size':516,'pad':0,'label':"daKytag02_Execute__FP13kytag02_class",'name':"daKytag02_Execute__FP13kytag02_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80855CC4,'size':8,'pad':0,'label':"daKytag02_IsDelete__FP13kytag02_class",'name':"daKytag02_IsDelete__FP13kytag02_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80855CCC,'size':32,'pad':0,'label':"daKytag02_Delete__FP13kytag02_class",'name':"daKytag02_Delete__FP13kytag02_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80855CEC,'size':264,'pad':0,'label':"daKytag02_Create__FP10fopAc_ac_c",'name':"daKytag02_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80855DF4,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80855DF8,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80855DFC,'size':4,'pad':0,'label':"lit_3666",'name':"@3666",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80855E00,'size':4,'pad':0,'label':"lit_3667",'name':"@3667",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80855E04,'size':4,'pad':0,'label':"lit_3668",'name':"@3668",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80855E08,'size':4,'pad':0,'label':"lit_3669",'name':"@3669",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80855E0C,'size':32,'pad':0,'label':"l_daKytag02_Method",'name':"l_daKytag02_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80855E2C,'size':48,'pad':0,'label':"g_profile_KYTAG02",'name':"g_profile_KYTAG02",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daKytag02_Draw__FP13kytag02_class":3,
	"daKytag02_Execute__FP13kytag02_class":4,
	"daKytag02_IsDelete__FP13kytag02_class":5,
	"daKytag02_Delete__FP13kytag02_class":6,
	"daKytag02_Create__FP10fopAc_ac_c":7,
	"_ctors":8,
	"_dtors":9,
	"lit_3666":10,
	"lit_3667":11,
	"lit_3668":12,
	"lit_3669":13,
	"l_daKytag02_Method":14,
	"g_profile_KYTAG02":15,
}

