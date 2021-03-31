#
# Generate By: dol2asm
# Module: 490
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_kage",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_kage",
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
	{'addr':0x80C31460,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3148C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C314B8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C314D8,'size':100,'pad':0,'label':"daObj_Kage_Draw__FP14obj_kage_class",'name':"daObj_Kage_Draw__FP14obj_kage_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3153C,'size':552,'pad':0,'label':"daObj_Kage_Execute__FP14obj_kage_class",'name':"daObj_Kage_Execute__FP14obj_kage_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C31764,'size':8,'pad':0,'label':"daObj_Kage_IsDelete__FP14obj_kage_class",'name':"daObj_Kage_IsDelete__FP14obj_kage_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C3176C,'size':48,'pad':0,'label':"daObj_Kage_Delete__FP14obj_kage_class",'name':"daObj_Kage_Delete__FP14obj_kage_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3179C,'size':108,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C31808,'size':332,'pad':0,'label':"daObj_Kage_Create__FP10fopAc_ac_c",'name':"daObj_Kage_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C31954,'size':4,'pad':0,'label':"data_80C31954",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C31958,'size':4,'pad':0,'label':"data_80C31958",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C3195C,'size':4,'pad':0,'label':"lit_3854",'name':"@3854",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C31960,'size':4,'pad':0,'label':"lit_3855",'name':"@3855",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C31964,'size':4,'pad':0,'label':"lit_3856",'name':"@3856",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C31968,'size':4,'pad':0,'label':"lit_3857",'name':"@3857",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C3196C,'size':4,'pad':0,'label':"lit_3858",'name':"@3858",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C31970,'size':4,'pad':0,'label':"lit_3859",'name':"@3859",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C31974,'size':4,'pad':0,'label':"lit_3860",'name':"@3860",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C31978,'size':4,'pad':0,'label':"lit_3861",'name':"@3861",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C3197C,'size':4,'pad':0,'label':"lit_3862",'name':"@3862",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C31980,'size':4,'pad':0,'label':"lit_3863",'name':"@3863",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C31984,'size':4,'pad':0,'label':"lit_3864",'name':"@3864",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C31988,'size':4,'pad':0,'label':"lit_3926",'name':"@3926",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C3198C,'size':4,'pad':0,'label':"lit_3927",'name':"@3927",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C31990,'size':9,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80C3199C,'size':32,'pad':0,'label':"l_daObj_Kage_Method",'name':"l_daObj_Kage_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C319BC,'size':48,'pad':0,'label':"g_profile_OBJ_KAGE",'name':"g_profile_OBJ_KAGE",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daObj_Kage_Draw__FP14obj_kage_class":3,
	"daObj_Kage_Execute__FP14obj_kage_class":4,
	"daObj_Kage_IsDelete__FP14obj_kage_class":5,
	"daObj_Kage_Delete__FP14obj_kage_class":6,
	"useHeapInit__FP10fopAc_ac_c":7,
	"daObj_Kage_Create__FP10fopAc_ac_c":8,
	"data_80C31954":9,
	"data_80C31958":10,
	"lit_3854":11,
	"lit_3855":12,
	"lit_3856":13,
	"lit_3857":14,
	"lit_3858":15,
	"lit_3859":16,
	"lit_3860":17,
	"lit_3861":18,
	"lit_3862":19,
	"lit_3863":20,
	"lit_3864":21,
	"lit_3926":22,
	"lit_3927":23,
	"stringBase0":24,
	"l_daObj_Kage_Method":25,
	"g_profile_OBJ_KAGE":26,
}

