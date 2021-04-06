#
# Generate By: dol2asm
# Module: 71
#

# Libraries
LIBRARIES = [
	"d/a/d_a_econt",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"unknown_translation_unit_bss",
	"d_a_econt",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".dtors",
	".bss",
	".rodata",
	".data",
]

# Symbols
SYMBOLS = [
	{'addr':0x805194A0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805194CC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805194F8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80519518,'size':8,'pad':0,'label':"daEcont_Draw__FP11econt_class",'name':"daEcont_Draw__FP11econt_class",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80519520,'size':88,'pad':0,'label':"s_rd_sub__FPvPv",'name':"s_rd_sub__FPvPv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80519578,'size':236,'pad':0,'label':"rider_game__FP11econt_class",'name':"rider_game__FP11econt_class",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80519664,'size':80,'pad':0,'label':"daEcont_Execute__FP11econt_class",'name':"daEcont_Execute__FP11econt_class",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805196B4,'size':8,'pad':0,'label':"daEcont_IsDelete__FP11econt_class",'name':"daEcont_IsDelete__FP11econt_class",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x805196BC,'size':40,'pad':0,'label':"daEcont_Delete__FP11econt_class",'name':"daEcont_Delete__FP11econt_class",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805196E4,'size':144,'pad':0,'label':"daEcont_Create__FP10fopAc_ac_c",'name':"daEcont_Create__FP10fopAc_ac_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80519774,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80519778,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8051977C,'size':4,'pad':0,'label':"lit_3870",'name':"@3870",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80519780,'size':4,'pad':0,'label':"lit_3871",'name':"@3871",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80519784,'size':4,'pad':0,'label':"lit_3872",'name':"@3872",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80519788,'size':4,'pad':0,'label':"lit_3873",'name':"@3873",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8051978C,'size':32,'pad':0,'label':"l_daEcont_Method",'name':"l_daEcont_Method",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805197AC,'size':48,'pad':0,'label':"g_profile_ECONT",'name':"g_profile_ECONT",'lib':-1,'tu':4,'section':5,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805197E0,'size':4,'pad':0,'label':"data_805197E0",'name':None,'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[0,2,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daEcont_Draw__FP11econt_class":3,
	"s_rd_sub__FPvPv":4,
	"rider_game__FP11econt_class":5,
	"daEcont_Execute__FP11econt_class":6,
	"daEcont_IsDelete__FP11econt_class":7,
	"daEcont_Delete__FP11econt_class":8,
	"daEcont_Create__FP10fopAc_ac_c":9,
	"_ctors":10,
	"_dtors":11,
	"lit_3870":12,
	"lit_3871":13,
	"lit_3872":14,
	"lit_3873":15,
	"l_daEcont_Method":16,
	"g_profile_ECONT":17,
	"data_805197E0":18,
}

