#
# Generate By: dol2asm
# Module: 651
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_table",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_table",
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
	{'addr':0x80D063C0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D063EC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D06418,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D06438,'size':44,'pad':0,'label':"daObjTable_Draw__FP12daObjTable_c",'name':"daObjTable_Draw__FP12daObjTable_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D06464,'size':32,'pad':0,'label':"daObjTable_Execute__FP12daObjTable_c",'name':"daObjTable_Execute__FP12daObjTable_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D06484,'size':8,'pad':0,'label':"daObjTable_IsDelete__FP12daObjTable_c",'name':"daObjTable_IsDelete__FP12daObjTable_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D0648C,'size':36,'pad':0,'label':"daObjTable_Delete__FP12daObjTable_c",'name':"daObjTable_Delete__FP12daObjTable_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D064B0,'size':176,'pad':0,'label':"daObjTable_Create__FP10fopAc_ac_c",'name':"daObjTable_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D06560,'size':112,'pad':0,'label':"CreateHeap__12daObjTable_cFv",'name':"CreateHeap__12daObjTable_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D065D0,'size':908,'pad':0,'label':"Create__12daObjTable_cFv",'name':"Create__12daObjTable_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0695C,'size':380,'pad':0,'label':"Execute__12daObjTable_cFPPA3_A4_f",'name':"Execute__12daObjTable_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D06AD8,'size':240,'pad':0,'label':"Draw__12daObjTable_cFv",'name':"Draw__12daObjTable_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D06BC8,'size':52,'pad':0,'label':"Delete__12daObjTable_cFv",'name':"Delete__12daObjTable_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D06BFC,'size':4,'pad':0,'label':"data_80D06BFC",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D06C00,'size':4,'pad':0,'label':"data_80D06C00",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D06C04,'size':4,'pad':0,'label':"lit_4017",'name':"@4017",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D06C08,'size':4,'pad':0,'label':"lit_4077",'name':"@4077",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D06C0C,'size':16,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D06C1C,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D06C20,'size':32,'pad':0,'label':"l_daObjTable_Method",'name':"l_daObjTable_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D06C40,'size':48,'pad':0,'label':"g_profile_Obj_Table",'name':"g_profile_Obj_Table",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D06C70,'size':40,'pad':0,'label':"__vt__12daObjTable_c",'name':"__vt__12daObjTable_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daObjTable_Draw__FP12daObjTable_c":3,
	"daObjTable_Execute__FP12daObjTable_c":4,
	"daObjTable_IsDelete__FP12daObjTable_c":5,
	"daObjTable_Delete__FP12daObjTable_c":6,
	"daObjTable_Create__FP10fopAc_ac_c":7,
	"CreateHeap__12daObjTable_cFv":8,
	"Create__12daObjTable_cFv":9,
	"Execute__12daObjTable_cFPPA3_A4_f":10,
	"Draw__12daObjTable_cFv":11,
	"Delete__12daObjTable_cFv":12,
	"data_80D06BFC":13,
	"data_80D06C00":14,
	"lit_4017":15,
	"lit_4077":16,
	"stringBase0":17,
	"l_arcName":18,
	"l_daObjTable_Method":19,
	"g_profile_Obj_Table":20,
	"__vt__12daObjTable_c":21,
}

