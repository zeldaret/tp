#
# Generate By: dol2asm
# Module: 14
#

# Libraries
LIBRARIES = [
	"d/a/kytag/d_a_kytag04",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_kytag04",
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
	{'addr':0x8046CAE0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046CB0C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046CB38,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046CB58,'size':1168,'pad':0,'label':"daKytag04_Draw__FP13kytag04_class",'name':"daKytag04_Draw__FP13kytag04_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046CFE8,'size':876,'pad':0,'label':"daKytag04_Execute__FP13kytag04_class",'name':"daKytag04_Execute__FP13kytag04_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046D354,'size':8,'pad':0,'label':"daKytag04_IsDelete__FP13kytag04_class",'name':"daKytag04_IsDelete__FP13kytag04_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8046D35C,'size':280,'pad':0,'label':"daKytag04_Delete__FP13kytag04_class",'name':"daKytag04_Delete__FP13kytag04_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046D474,'size':296,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046D59C,'size':1068,'pad':0,'label':"daKytag04_Create__FP10fopAc_ac_c",'name':"daKytag04_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046D9C8,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046DA10,'size':4,'pad':0,'label':"data_8046DA10",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046DA14,'size':4,'pad':0,'label':"data_8046DA14",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046DA18,'size':4,'pad':0,'label':"lit_3960",'name':"@3960",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046DA1C,'size':4,'pad':0,'label':"lit_3961",'name':"@3961",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046DA20,'size':4,'pad':0,'label':"lit_3962",'name':"@3962",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046DA24,'size':4,'pad':0,'label':"lit_3963",'name':"@3963",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046DA28,'size':4,'pad':0,'label':"lit_3964",'name':"@3964",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046DA2C,'size':4,'pad':0,'label':"lit_3965",'name':"@3965",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046DA30,'size':4,'pad':0,'label':"lit_3966",'name':"@3966",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046DA34,'size':4,'pad':0,'label':"lit_3967",'name':"@3967",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046DA38,'size':4,'pad':0,'label':"lit_3968",'name':"@3968",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046DA3C,'size':4,'pad':0,'label':"lit_3969",'name':"@3969",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046DA40,'size':4,'pad':4,'label':"lit_4066",'name':"@4066",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046DA48,'size':8,'pad':0,'label':"lit_4326",'name':"@4326",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046DA50,'size':38,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x8046DA78,'size':32,'pad':0,'label':"l_daKytag04_Method",'name':"l_daKytag04_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8046DA98,'size':48,'pad':0,'label':"g_profile_KYTAG04",'name':"g_profile_KYTAG04",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8046DAC8,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daKytag04_Draw__FP13kytag04_class":3,
	"daKytag04_Execute__FP13kytag04_class":4,
	"daKytag04_IsDelete__FP13kytag04_class":5,
	"daKytag04_Delete__FP13kytag04_class":6,
	"useHeapInit__FP10fopAc_ac_c":7,
	"daKytag04_Create__FP10fopAc_ac_c":8,
	"__dt__12J3DFrameCtrlFv":9,
	"data_8046DA10":10,
	"data_8046DA14":11,
	"lit_3960":12,
	"lit_3961":13,
	"lit_3962":14,
	"lit_3963":15,
	"lit_3964":16,
	"lit_3965":17,
	"lit_3966":18,
	"lit_3967":19,
	"lit_3968":20,
	"lit_3969":21,
	"lit_4066":22,
	"lit_4326":23,
	"stringBase0":24,
	"l_daKytag04_Method":25,
	"g_profile_KYTAG04":26,
	"__vt__12J3DFrameCtrl":27,
}

