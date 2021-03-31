#
# Generate By: dol2asm
# Module: 90
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_bkdoor",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_bkdoor",
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
	{'addr':0x80578CA0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80578CCC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80578CF8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80578D18,'size':52,'pad':0,'label':"search_door__FPvPv",'name':"search_door__FPvPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80578D4C,'size':60,'pad':0,'label':"initBaseMtx__13daObjBkDoor_cFv",'name':"initBaseMtx__13daObjBkDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80578D88,'size':140,'pad':0,'label':"setBaseMtx__13daObjBkDoor_cFv",'name':"setBaseMtx__13daObjBkDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80578E14,'size':140,'pad':0,'label':"Create__13daObjBkDoor_cFv",'name':"Create__13daObjBkDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80578EA0,'size':128,'pad':0,'label':"CreateHeap__13daObjBkDoor_cFv",'name':"CreateHeap__13daObjBkDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80578F20,'size':160,'pad':0,'label':"create1st__13daObjBkDoor_cFv",'name':"create1st__13daObjBkDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80578FC0,'size':108,'pad':0,'label':"openCheck__13daObjBkDoor_cFv",'name':"openCheck__13daObjBkDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057902C,'size':696,'pad':0,'label':"Execute__13daObjBkDoor_cFPPA3_A4_f",'name':"Execute__13daObjBkDoor_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805792E4,'size':164,'pad':0,'label':"Draw__13daObjBkDoor_cFv",'name':"Draw__13daObjBkDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80579388,'size':52,'pad':0,'label':"Delete__13daObjBkDoor_cFv",'name':"Delete__13daObjBkDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805793BC,'size':96,'pad':0,'label':"daObjBkDoor_create1st__FP13daObjBkDoor_c",'name':"daObjBkDoor_create1st__FP13daObjBkDoor_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057941C,'size':32,'pad':0,'label':"daObjBkDoor_MoveBGDelete__FP13daObjBkDoor_c",'name':"daObjBkDoor_MoveBGDelete__FP13daObjBkDoor_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057943C,'size':32,'pad':0,'label':"daObjBkDoor_MoveBGExecute__FP13daObjBkDoor_c",'name':"daObjBkDoor_MoveBGExecute__FP13daObjBkDoor_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057945C,'size':44,'pad':0,'label':"daObjBkDoor_MoveBGDraw__FP13daObjBkDoor_c",'name':"daObjBkDoor_MoveBGDraw__FP13daObjBkDoor_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80579488,'size':4,'pad':0,'label':"data_80579488",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8057948C,'size':4,'pad':0,'label':"data_8057948C",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80579490,'size':8,'pad':0,'label':"l_bmd",'name':"l_bmd",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80579498,'size':8,'pad':0,'label':"l_dzb",'name':"l_dzb",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805794A0,'size':20,'pad':0,'label':"l_col_offsetX",'name':"l_col_offsetX",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805794B4,'size':48,'pad':0,'label':"l_roll_crash_check_areaL",'name':"l_roll_crash_check_areaL",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805794E4,'size':48,'pad':0,'label':"l_roll_crash_check_areaR",'name':"l_roll_crash_check_areaR",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80579514,'size':4,'pad':0,'label':"lit_3702",'name':"@3702",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80579518,'size':4,'pad':0,'label':"lit_3817",'name':"@3817",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8057951C,'size':4,'pad':0,'label':"lit_3818",'name':"@3818",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80579520,'size':4,'pad':0,'label':"lit_3819",'name':"@3819",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80579524,'size':4,'pad':0,'label':"lit_3820",'name':"@3820",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80579528,'size':4,'pad':0,'label':"lit_3821",'name':"@3821",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8057952C,'size':4,'pad':0,'label':"lit_3822",'name':"@3822",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80579530,'size':4,'pad':0,'label':"lit_3823",'name':"@3823",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80579534,'size':4,'pad':0,'label':"lit_3824",'name':"@3824",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80579538,'size':9,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80579544,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80579548,'size':32,'pad':0,'label':"daObjBkDoor_METHODS",'name':"daObjBkDoor_METHODS",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80579568,'size':48,'pad':0,'label':"g_profile_Obj_BkDoor",'name':"g_profile_Obj_BkDoor",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80579598,'size':40,'pad':0,'label':"__vt__13daObjBkDoor_c",'name':"__vt__13daObjBkDoor_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"search_door__FPvPv":3,
	"initBaseMtx__13daObjBkDoor_cFv":4,
	"setBaseMtx__13daObjBkDoor_cFv":5,
	"Create__13daObjBkDoor_cFv":6,
	"CreateHeap__13daObjBkDoor_cFv":7,
	"create1st__13daObjBkDoor_cFv":8,
	"openCheck__13daObjBkDoor_cFv":9,
	"Execute__13daObjBkDoor_cFPPA3_A4_f":10,
	"Draw__13daObjBkDoor_cFv":11,
	"Delete__13daObjBkDoor_cFv":12,
	"daObjBkDoor_create1st__FP13daObjBkDoor_c":13,
	"daObjBkDoor_MoveBGDelete__FP13daObjBkDoor_c":14,
	"daObjBkDoor_MoveBGExecute__FP13daObjBkDoor_c":15,
	"daObjBkDoor_MoveBGDraw__FP13daObjBkDoor_c":16,
	"data_80579488":17,
	"data_8057948C":18,
	"l_bmd":19,
	"l_dzb":20,
	"l_col_offsetX":21,
	"l_roll_crash_check_areaL":22,
	"l_roll_crash_check_areaR":23,
	"lit_3702":24,
	"lit_3817":25,
	"lit_3818":26,
	"lit_3819":27,
	"lit_3820":28,
	"lit_3821":29,
	"lit_3822":30,
	"lit_3823":31,
	"lit_3824":32,
	"stringBase0":33,
	"l_arcName":34,
	"daObjBkDoor_METHODS":35,
	"g_profile_Obj_BkDoor":36,
	"__vt__13daObjBkDoor_c":37,
}

