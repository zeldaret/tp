#
# Generate By: dol2asm
# Module: 107
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_mgate",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_mgate",
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
	{'addr':0x80593540,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059356C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593598,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805935B8,'size':120,'pad':0,'label':"initBaseMtx__12daObjMGate_cFv",'name':"initBaseMtx__12daObjMGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593630,'size':304,'pad':0,'label':"setBaseMtx__12daObjMGate_cFv",'name':"setBaseMtx__12daObjMGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593760,'size':76,'pad':0,'label':"Create__12daObjMGate_cFv",'name':"Create__12daObjMGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805937AC,'size':224,'pad':0,'label':"CreateHeap__12daObjMGate_cFv",'name':"CreateHeap__12daObjMGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059388C,'size':252,'pad':0,'label':"create1st__12daObjMGate_cFv",'name':"create1st__12daObjMGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593988,'size':708,'pad':0,'label':"Execute__12daObjMGate_cFPPA3_A4_f",'name':"Execute__12daObjMGate_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593C4C,'size':204,'pad':0,'label':"Draw__12daObjMGate_cFv",'name':"Draw__12daObjMGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593D18,'size':92,'pad':0,'label':"Delete__12daObjMGate_cFv",'name':"Delete__12daObjMGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593D74,'size':96,'pad':0,'label':"daObjMGate_create1st__FP12daObjMGate_c",'name':"daObjMGate_create1st__FP12daObjMGate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593DD4,'size':32,'pad':0,'label':"daObjMGate_MoveBGDelete__FP12daObjMGate_c",'name':"daObjMGate_MoveBGDelete__FP12daObjMGate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593DF4,'size':32,'pad':0,'label':"daObjMGate_MoveBGExecute__FP12daObjMGate_c",'name':"daObjMGate_MoveBGExecute__FP12daObjMGate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593E14,'size':44,'pad':0,'label':"daObjMGate_MoveBGDraw__FP12daObjMGate_c",'name':"daObjMGate_MoveBGDraw__FP12daObjMGate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593E40,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80593E44,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80593E48,'size':24,'pad':0,'label':"l_key_offset",'name':"l_key_offset",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80593E60,'size':20,'pad':0,'label':"l_col_offsetX",'name':"l_col_offsetX",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80593E74,'size':48,'pad':0,'label':"l_roll_crash_check_areaL",'name':"l_roll_crash_check_areaL",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80593EA4,'size':48,'pad':0,'label':"l_roll_crash_check_areaL2",'name':"l_roll_crash_check_areaL2",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80593ED4,'size':4,'pad':0,'label':"lit_3670",'name':"@3670",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80593ED8,'size':4,'pad':0,'label':"lit_3752",'name':"@3752",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80593EDC,'size':4,'pad':0,'label':"lit_3880",'name':"@3880",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80593EE0,'size':4,'pad':0,'label':"lit_3881",'name':"@3881",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80593EE4,'size':4,'pad':0,'label':"lit_3882",'name':"@3882",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80593EE8,'size':4,'pad':0,'label':"lit_3883",'name':"@3883",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80593EEC,'size':4,'pad':0,'label':"lit_3884",'name':"@3884",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80593EF0,'size':4,'pad':0,'label':"lit_3885",'name':"@3885",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80593EF4,'size':4,'pad':0,'label':"lit_3886",'name':"@3886",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80593EF8,'size':4,'pad':0,'label':"lit_3887",'name':"@3887",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80593EFC,'size':105,'pad':0,'label':"d_a_obj_mgate__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[5,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80593F68,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80593F74,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80593F88,'size':8,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80593F90,'size':8,'pad':0,'label':"l_bmdName",'name':"l_bmdName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80593F98,'size':8,'pad':0,'label':"l_dzbName",'name':"l_dzbName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80593FA0,'size':4,'pad':0,'label':"l_keyArcName",'name':"l_keyArcName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80593FA4,'size':4,'pad':0,'label':"l_keyBmdName",'name':"l_keyBmdName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80593FA8,'size':32,'pad':0,'label':"daObjMGate_METHODS",'name':"daObjMGate_METHODS",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80593FC8,'size':48,'pad':0,'label':"g_profile_Obj_MGate",'name':"g_profile_Obj_MGate",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80593FF8,'size':40,'pad':0,'label':"__vt__12daObjMGate_c",'name':"__vt__12daObjMGate_c",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__12daObjMGate_cFv":3,
	"setBaseMtx__12daObjMGate_cFv":4,
	"Create__12daObjMGate_cFv":5,
	"CreateHeap__12daObjMGate_cFv":6,
	"create1st__12daObjMGate_cFv":7,
	"Execute__12daObjMGate_cFPPA3_A4_f":8,
	"Draw__12daObjMGate_cFv":9,
	"Delete__12daObjMGate_cFv":10,
	"daObjMGate_create1st__FP12daObjMGate_c":11,
	"daObjMGate_MoveBGDelete__FP12daObjMGate_c":12,
	"daObjMGate_MoveBGExecute__FP12daObjMGate_c":13,
	"daObjMGate_MoveBGDraw__FP12daObjMGate_c":14,
	"_ctors":15,
	"_dtors":16,
	"l_key_offset":17,
	"l_col_offsetX":18,
	"l_roll_crash_check_areaL":19,
	"l_roll_crash_check_areaL2":20,
	"lit_3670":21,
	"lit_3752":22,
	"lit_3880":23,
	"lit_3881":24,
	"lit_3882":25,
	"lit_3883":26,
	"lit_3884":27,
	"lit_3885":28,
	"lit_3886":29,
	"lit_3887":30,
	"d_a_obj_mgate__stringBase0":31,
	"cNullVec__6Z2Calc":32,
	"lit_1787":33,
	"l_arcName":34,
	"l_bmdName":35,
	"l_dzbName":36,
	"l_keyArcName":37,
	"l_keyBmdName":38,
	"daObjMGate_METHODS":39,
	"g_profile_Obj_MGate":40,
	"__vt__12daObjMGate_c":41,
}

