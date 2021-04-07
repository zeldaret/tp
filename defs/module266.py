#
# Generate By: dol2asm
# Module: 266
#

# Libraries
LIBRARIES = [
	"d/a/kytag/d_a_kytag01",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_kytag01",
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
	{'addr':0x80854FE0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8085500C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80855038,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80855058,'size':712,'pad':0,'label':"get_check_pos__FP13kytag01_class",'name':"get_check_pos__FP13kytag01_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80855320,'size':792,'pad':0,'label':"mist_tag_move__FP13kytag01_class",'name':"mist_tag_move__FP13kytag01_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80855638,'size':8,'pad':0,'label':"daKytag01_Draw__FP13kytag01_class",'name':"daKytag01_Draw__FP13kytag01_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80855640,'size':412,'pad':0,'label':"daKytag01_Execute__FP13kytag01_class",'name':"daKytag01_Execute__FP13kytag01_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x808557DC,'size':8,'pad':0,'label':"daKytag01_IsDelete__FP13kytag01_class",'name':"daKytag01_IsDelete__FP13kytag01_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x808557E4,'size':8,'pad':0,'label':"daKytag01_Delete__FP13kytag01_class",'name':"daKytag01_Delete__FP13kytag01_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x808557EC,'size':408,'pad':0,'label':"daKytag01_Create__FP10fopAc_ac_c",'name':"daKytag01_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80855984,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80855988,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8085598C,'size':4,'pad':4,'label':"lit_3796",'name':"@3796",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80855994,'size':8,'pad':0,'label':"lit_3797",'name':"@3797",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8085599C,'size':8,'pad':0,'label':"lit_3798",'name':"@3798",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x808559A4,'size':8,'pad':0,'label':"lit_3799",'name':"@3799",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x808559AC,'size':4,'pad':0,'label':"lit_3879",'name':"@3879",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x808559B0,'size':4,'pad':0,'label':"lit_3880",'name':"@3880",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x808559B4,'size':4,'pad':0,'label':"lit_3881",'name':"@3881",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x808559B8,'size':4,'pad':0,'label':"lit_3882",'name':"@3882",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x808559BC,'size':4,'pad':0,'label':"lit_3883",'name':"@3883",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x808559C0,'size':4,'pad':0,'label':"lit_3884",'name':"@3884",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x808559C4,'size':4,'pad':0,'label':"lit_3885",'name':"@3885",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x808559C8,'size':4,'pad':0,'label':"lit_3886",'name':"@3886",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x808559CC,'size':8,'pad':0,'label':"lit_3888",'name':"@3888",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x808559D4,'size':4,'pad':0,'label':"lit_3946",'name':"@3946",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x808559D8,'size':4,'pad':0,'label':"lit_3947",'name':"@3947",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x808559DC,'size':4,'pad':0,'label':"lit_3948",'name':"@3948",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x808559E0,'size':4,'pad':0,'label':"lit_4016",'name':"@4016",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x808559E4,'size':4,'pad':0,'label':"lit_4017",'name':"@4017",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x808559E8,'size':32,'pad':0,'label':"l_daKytag01_Method",'name':"l_daKytag01_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80855A08,'size':48,'pad':0,'label':"g_profile_KYTAG01",'name':"g_profile_KYTAG01",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"get_check_pos__FP13kytag01_class":3,
	"mist_tag_move__FP13kytag01_class":4,
	"daKytag01_Draw__FP13kytag01_class":5,
	"daKytag01_Execute__FP13kytag01_class":6,
	"daKytag01_IsDelete__FP13kytag01_class":7,
	"daKytag01_Delete__FP13kytag01_class":8,
	"daKytag01_Create__FP10fopAc_ac_c":9,
	"_ctors":10,
	"_dtors":11,
	"lit_3796":12,
	"lit_3797":13,
	"lit_3798":14,
	"lit_3799":15,
	"lit_3879":16,
	"lit_3880":17,
	"lit_3881":18,
	"lit_3882":19,
	"lit_3883":20,
	"lit_3884":21,
	"lit_3885":22,
	"lit_3886":23,
	"lit_3888":24,
	"lit_3946":25,
	"lit_3947":26,
	"lit_3948":27,
	"lit_4016":28,
	"lit_4017":29,
	"l_daKytag01_Method":30,
	"g_profile_KYTAG01":31,
}

