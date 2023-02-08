#
# Generate By: dol2asm
# Module: 646
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_swspinner",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_swspinner",
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
	{'addr':0x80CFFF00,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFFF2C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFFF58,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFFF78,'size':508,'pad':0,'label':"search_spinner_sub__FPvPv",'name':"search_spinner_sub__FPvPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D00174,'size':88,'pad':0,'label':"initBaseMtx__16daObjSwSpinner_cFv",'name':"initBaseMtx__16daObjSwSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D001CC,'size':184,'pad':0,'label':"setBaseMtx__16daObjSwSpinner_cFv",'name':"setBaseMtx__16daObjSwSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D00284,'size':216,'pad':0,'label':"Create__16daObjSwSpinner_cFv",'name':"Create__16daObjSwSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0035C,'size':316,'pad':0,'label':"CreateHeap__16daObjSwSpinner_cFv",'name':"CreateHeap__16daObjSwSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D00498,'size':128,'pad':0,'label':"create1st__16daObjSwSpinner_cFv",'name':"create1st__16daObjSwSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D00518,'size':888,'pad':0,'label':"Execute__16daObjSwSpinner_cFPPA3_A4_f",'name':"Execute__16daObjSwSpinner_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D00890,'size':196,'pad':0,'label':"Draw__16daObjSwSpinner_cFv",'name':"Draw__16daObjSwSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D00954,'size':108,'pad':0,'label':"Delete__16daObjSwSpinner_cFv",'name':"Delete__16daObjSwSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D009C0,'size':96,'pad':0,'label':"daObjSwSpinner_create1st__FP16daObjSwSpinner_c",'name':"daObjSwSpinner_create1st__FP16daObjSwSpinner_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D00A20,'size':32,'pad':0,'label':"daObjSwSpinner_MoveBGDelete__FP16daObjSwSpinner_c",'name':"daObjSwSpinner_MoveBGDelete__FP16daObjSwSpinner_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D00A40,'size':32,'pad':0,'label':"daObjSwSpinner_MoveBGExecute__FP16daObjSwSpinner_c",'name':"daObjSwSpinner_MoveBGExecute__FP16daObjSwSpinner_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D00A60,'size':44,'pad':0,'label':"daObjSwSpinner_MoveBGDraw__FP16daObjSwSpinner_c",'name':"daObjSwSpinner_MoveBGDraw__FP16daObjSwSpinner_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D00A8C,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D00A90,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D00A94,'size':4,'pad':4,'label':"lit_3717",'name':"@3717",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D00A9C,'size':8,'pad':0,'label':"lit_3718",'name':"@3718",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D00AA4,'size':8,'pad':0,'label':"lit_3719",'name':"@3719",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D00AAC,'size':8,'pad':0,'label':"lit_3720",'name':"@3720",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D00AB4,'size':4,'pad':0,'label':"lit_3721",'name':"@3721",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D00AB8,'size':4,'pad':0,'label':"lit_3773",'name':"@3773",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D00ABC,'size':4,'pad':0,'label':"lit_3774",'name':"@3774",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D00AC0,'size':4,'pad':0,'label':"lit_3919",'name':"@3919",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D00AC4,'size':4,'pad':0,'label':"lit_3920",'name':"@3920",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D00AC8,'size':4,'pad':0,'label':"lit_3921",'name':"@3921",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D00ACC,'size':4,'pad':0,'label':"lit_3922",'name':"@3922",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D00AD0,'size':4,'pad':0,'label':"lit_3923",'name':"@3923",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D00AD4,'size':10,'pad':0,'label':"d_a_obj_swspinner__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D00AE0,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D00AE4,'size':32,'pad':0,'label':"daObjSwSpinner_METHODS",'name':"daObjSwSpinner_METHODS",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D00B04,'size':48,'pad':0,'label':"g_profile_Obj_SwSpinner",'name':"g_profile_Obj_SwSpinner",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D00B34,'size':40,'pad':0,'label':"__vt__16daObjSwSpinner_c",'name':"__vt__16daObjSwSpinner_c",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"search_spinner_sub__FPvPv":3,
	"initBaseMtx__16daObjSwSpinner_cFv":4,
	"setBaseMtx__16daObjSwSpinner_cFv":5,
	"Create__16daObjSwSpinner_cFv":6,
	"CreateHeap__16daObjSwSpinner_cFv":7,
	"create1st__16daObjSwSpinner_cFv":8,
	"Execute__16daObjSwSpinner_cFPPA3_A4_f":9,
	"Draw__16daObjSwSpinner_cFv":10,
	"Delete__16daObjSwSpinner_cFv":11,
	"daObjSwSpinner_create1st__FP16daObjSwSpinner_c":12,
	"daObjSwSpinner_MoveBGDelete__FP16daObjSwSpinner_c":13,
	"daObjSwSpinner_MoveBGExecute__FP16daObjSwSpinner_c":14,
	"daObjSwSpinner_MoveBGDraw__FP16daObjSwSpinner_c":15,
	"_ctors":16,
	"_dtors":17,
	"lit_3717":18,
	"lit_3718":19,
	"lit_3719":20,
	"lit_3720":21,
	"lit_3721":22,
	"lit_3773":23,
	"lit_3774":24,
	"lit_3919":25,
	"lit_3920":26,
	"lit_3921":27,
	"lit_3922":28,
	"lit_3923":29,
	"d_a_obj_swspinner__stringBase0":30,
	"l_arcName":31,
	"daObjSwSpinner_METHODS":32,
	"g_profile_Obj_SwSpinner":33,
	"__vt__16daObjSwSpinner_c":34,
}

