#
# Generate By: dol2asm
# Module: 737
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_rmbit_sw",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_rmbit_sw",
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
	{'addr':0x80D5FA80,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FAAC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FAD8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FAF8,'size':60,'pad':0,'label':"__ct__14daTagRmbitSw_cFv",'name':"__ct__14daTagRmbitSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FB34,'size':96,'pad':0,'label':"__dt__14daTagRmbitSw_cFv",'name':"__dt__14daTagRmbitSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FB94,'size':88,'pad':0,'label':"create__14daTagRmbitSw_cFv",'name':"create__14daTagRmbitSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FBEC,'size':8,'pad':0,'label':"Delete__14daTagRmbitSw_cFv",'name':"Delete__14daTagRmbitSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D5FBF4,'size':8,'pad':0,'label':"draw__14daTagRmbitSw_cFv",'name':"draw__14daTagRmbitSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D5FBFC,'size':444,'pad':0,'label':"execute__14daTagRmbitSw_cFv",'name':"execute__14daTagRmbitSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FDB8,'size':56,'pad':0,'label':"init__14daTagRmbitSw_cFv",'name':"init__14daTagRmbitSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FDF0,'size':252,'pad':0,'label':"chkPlyrInTag__14daTagRmbitSw_cFv",'name':"chkPlyrInTag__14daTagRmbitSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FEEC,'size':84,'pad':0,'label':"daTagRmbitSw_create__FP14daTagRmbitSw_c",'name':"daTagRmbitSw_create__FP14daTagRmbitSw_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FF40,'size':32,'pad':0,'label':"daTagRmbitSw_Delete__FP14daTagRmbitSw_c",'name':"daTagRmbitSw_Delete__FP14daTagRmbitSw_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FF60,'size':32,'pad':0,'label':"daTagRmbitSw_execute__FP14daTagRmbitSw_c",'name':"daTagRmbitSw_execute__FP14daTagRmbitSw_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FF80,'size':32,'pad':0,'label':"daTagRmbitSw_draw__FP14daTagRmbitSw_c",'name':"daTagRmbitSw_draw__FP14daTagRmbitSw_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5FFA0,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D5FFA4,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D5FFA8,'size':4,'pad':0,'label':"lit_3817",'name':"@3817",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D5FFAC,'size':4,'pad':0,'label':"lit_3818",'name':"@3818",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D5FFB0,'size':4,'pad':0,'label':"lit_3853",'name':"@3853",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5FFB4,'size':32,'pad':0,'label':"daTagRmbitSw_METHODS",'name':"daTagRmbitSw_METHODS",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D5FFD4,'size':48,'pad':0,'label':"g_profile_Tag_RmbitSw",'name':"g_profile_Tag_RmbitSw",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D60004,'size':12,'pad':0,'label':"__vt__14daTagRmbitSw_c",'name':"__vt__14daTagRmbitSw_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__ct__14daTagRmbitSw_cFv":3,
	"__dt__14daTagRmbitSw_cFv":4,
	"create__14daTagRmbitSw_cFv":5,
	"Delete__14daTagRmbitSw_cFv":6,
	"draw__14daTagRmbitSw_cFv":7,
	"execute__14daTagRmbitSw_cFv":8,
	"init__14daTagRmbitSw_cFv":9,
	"chkPlyrInTag__14daTagRmbitSw_cFv":10,
	"daTagRmbitSw_create__FP14daTagRmbitSw_c":11,
	"daTagRmbitSw_Delete__FP14daTagRmbitSw_c":12,
	"daTagRmbitSw_execute__FP14daTagRmbitSw_c":13,
	"daTagRmbitSw_draw__FP14daTagRmbitSw_c":14,
	"_ctors":15,
	"_dtors":16,
	"lit_3817":17,
	"lit_3818":18,
	"lit_3853":19,
	"daTagRmbitSw_METHODS":20,
	"g_profile_Tag_RmbitSw":21,
	"__vt__14daTagRmbitSw_c":22,
}

