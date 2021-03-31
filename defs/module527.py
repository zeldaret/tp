#
# Generate By: dol2asm
# Module: 527
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_lv4HsTarget",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_obj_lv4HsTarget",
	"global_destructor_chain",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".rodata",
	".data",
	".bss",
	".dtors",
]

# Symbols
SYMBOLS = [
	{'addr':0x80C5F540,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F56C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F598,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F5B8,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'class_template':None,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F5D4,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'class_template':None,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F62C,'size':28,'pad':0,'label':"__ct__19daLv4HsTarget_HIO_cFv",'name':"__ct__19daLv4HsTarget_HIO_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F648,'size':72,'pad':0,'label':"__dt__14mDoHIO_entry_cFv",'name':"__dt__14mDoHIO_entry_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F690,'size':136,'pad':0,'label':"setBaseMtx__15daLv4HsTarget_cFv",'name':"setBaseMtx__15daLv4HsTarget_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F718,'size':108,'pad':0,'label':"CreateHeap__15daLv4HsTarget_cFv",'name':"CreateHeap__15daLv4HsTarget_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F784,'size':216,'pad':0,'label':"create__15daLv4HsTarget_cFv",'name':"create__15daLv4HsTarget_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F85C,'size':20,'pad':0,'label':"Execute__15daLv4HsTarget_cFPPA3_A4_f",'name':"Execute__15daLv4HsTarget_cFPPA3_A4_f",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F870,'size':100,'pad':0,'label':"Draw__15daLv4HsTarget_cFv",'name':"Draw__15daLv4HsTarget_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F8D4,'size':48,'pad':0,'label':"Delete__15daLv4HsTarget_cFv",'name':"Delete__15daLv4HsTarget_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F904,'size':44,'pad':0,'label':"daLv4HsTarget_Draw__FP15daLv4HsTarget_c",'name':"daLv4HsTarget_Draw__FP15daLv4HsTarget_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F930,'size':32,'pad':0,'label':"daLv4HsTarget_Execute__FP15daLv4HsTarget_c",'name':"daLv4HsTarget_Execute__FP15daLv4HsTarget_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F950,'size':32,'pad':0,'label':"daLv4HsTarget_Delete__FP15daLv4HsTarget_c",'name':"daLv4HsTarget_Delete__FP15daLv4HsTarget_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F970,'size':32,'pad':0,'label':"daLv4HsTarget_Create__FP10fopAc_ac_c",'name':"daLv4HsTarget_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F990,'size':92,'pad':0,'label':"__dt__19daLv4HsTarget_HIO_cFv",'name':"__dt__19daLv4HsTarget_HIO_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C5F9EC,'size':60,'pad':0,'label':"__sinit_d_a_obj_lv4HsTarget_cpp",'name':"__sinit_d_a_obj_lv4HsTarget_cpp",'lib':-1,'tu':2,'section':0,'class_template':None,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x80C5FA28,'size':8,'pad':0,'label':"data_80C5FA28",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C5FA30,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C5FA34,'size':8,'pad':0,'label':"pad_80C5FA34",'name':None,'lib':1,'tu':3,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C5FA3C,'size':9,'pad':3,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80C5FA48,'size':32,'pad':0,'label':"l_daLv4HsTarget_Method",'name':"l_daLv4HsTarget_Method",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C5FA68,'size':48,'pad':0,'label':"g_profile_Obj_Lv4HsTarget",'name':"g_profile_Obj_Lv4HsTarget",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C5FA98,'size':40,'pad':0,'label':"__vt__15daLv4HsTarget_c",'name':"__vt__15daLv4HsTarget_c",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C5FAC0,'size':12,'pad':0,'label':"__vt__19daLv4HsTarget_HIO_c",'name':"__vt__19daLv4HsTarget_HIO_c",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C5FACC,'size':12,'pad':0,'label':"__vt__14mDoHIO_entry_c",'name':"__vt__14mDoHIO_entry_c",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':True,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C5FAD8,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C5FAE0,'size':12,'pad':0,'label':"lit_3618",'name':"@3618",'lib':-1,'tu':2,'section':4,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C5FAEC,'size':4,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__19daLv4HsTarget_HIO_cFv":5,
	"__dt__14mDoHIO_entry_cFv":6,
	"setBaseMtx__15daLv4HsTarget_cFv":7,
	"CreateHeap__15daLv4HsTarget_cFv":8,
	"create__15daLv4HsTarget_cFv":9,
	"Execute__15daLv4HsTarget_cFPPA3_A4_f":10,
	"Draw__15daLv4HsTarget_cFv":11,
	"Delete__15daLv4HsTarget_cFv":12,
	"daLv4HsTarget_Draw__FP15daLv4HsTarget_c":13,
	"daLv4HsTarget_Execute__FP15daLv4HsTarget_c":14,
	"daLv4HsTarget_Delete__FP15daLv4HsTarget_c":15,
	"daLv4HsTarget_Create__FP10fopAc_ac_c":16,
	"__dt__19daLv4HsTarget_HIO_cFv":17,
	"__sinit_d_a_obj_lv4HsTarget_cpp":18,
	"data_80C5FA28":19,
	"__destroy_global_chain_reference":20,
	"pad_80C5FA34":21,
	"stringBase0":22,
	"l_daLv4HsTarget_Method":23,
	"g_profile_Obj_Lv4HsTarget":24,
	"__vt__15daLv4HsTarget_c":25,
	"__vt__19daLv4HsTarget_HIO_c":26,
	"__vt__14mDoHIO_entry_c":27,
	"__global_destructor_chain":28,
	"lit_3618":29,
	"l_HIO":30,
}

