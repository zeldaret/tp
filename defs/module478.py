#
# Generate By: dol2asm
# Module: 478
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_hsTarget",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_obj_hsTarget",
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
	{'addr':0x80C1F340,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F36C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F398,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F3B8,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'class_template':None,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F3D4,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'class_template':None,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F42C,'size':28,'pad':0,'label':"__ct__16daHsTarget_HIO_cFv",'name':"__ct__16daHsTarget_HIO_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F448,'size':72,'pad':0,'label':"__dt__14mDoHIO_entry_cFv",'name':"__dt__14mDoHIO_entry_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F490,'size':136,'pad':0,'label':"setBaseMtx__12daHsTarget_cFv",'name':"setBaseMtx__12daHsTarget_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F518,'size':128,'pad':0,'label':"CreateHeap__12daHsTarget_cFv",'name':"CreateHeap__12daHsTarget_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F598,'size':280,'pad':0,'label':"create__12daHsTarget_cFv",'name':"create__12daHsTarget_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F6B0,'size':20,'pad':0,'label':"Execute__12daHsTarget_cFPPA3_A4_f",'name':"Execute__12daHsTarget_cFPPA3_A4_f",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F6C4,'size':100,'pad':0,'label':"Draw__12daHsTarget_cFv",'name':"Draw__12daHsTarget_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F728,'size':64,'pad':0,'label':"Delete__12daHsTarget_cFv",'name':"Delete__12daHsTarget_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F768,'size':44,'pad':0,'label':"daHsTarget_Draw__FP12daHsTarget_c",'name':"daHsTarget_Draw__FP12daHsTarget_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F794,'size':32,'pad':0,'label':"daHsTarget_Execute__FP12daHsTarget_c",'name':"daHsTarget_Execute__FP12daHsTarget_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F7B4,'size':32,'pad':0,'label':"daHsTarget_Delete__FP12daHsTarget_c",'name':"daHsTarget_Delete__FP12daHsTarget_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F7D4,'size':32,'pad':0,'label':"daHsTarget_Create__FP10fopAc_ac_c",'name':"daHsTarget_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F7F4,'size':92,'pad':0,'label':"__dt__16daHsTarget_HIO_cFv",'name':"__dt__16daHsTarget_HIO_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C1F850,'size':60,'pad':0,'label':"__sinit_d_a_obj_hsTarget_cpp",'name':"__sinit_d_a_obj_hsTarget_cpp",'lib':-1,'tu':2,'section':0,'class_template':None,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x80C1F88C,'size':8,'pad':0,'label':"data_80C1F88C",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C1F894,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C1F898,'size':8,'pad':0,'label':"pad_80C1F898",'name':None,'lib':1,'tu':3,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C1F8A0,'size':8,'pad':0,'label':"l_bmdIdx",'name':"l_bmdIdx",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C1F8A8,'size':8,'pad':0,'label':"l_dzbIdx",'name':"l_dzbIdx",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C1F8B0,'size':16,'pad':0,'label':"struct_80C1F8B0",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Structure"},
	{'addr':0x80C1F8C0,'size':8,'pad':0,'label':"l_resNameIdx",'name':"l_resNameIdx",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C1F8C8,'size':32,'pad':0,'label':"l_daHsTarget_Method",'name':"l_daHsTarget_Method",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C1F8E8,'size':48,'pad':0,'label':"g_profile_Obj_HsTarget",'name':"g_profile_Obj_HsTarget",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C1F918,'size':40,'pad':0,'label':"__vt__12daHsTarget_c",'name':"__vt__12daHsTarget_c",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C1F940,'size':12,'pad':0,'label':"__vt__16daHsTarget_HIO_c",'name':"__vt__16daHsTarget_HIO_c",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C1F94C,'size':12,'pad':0,'label':"__vt__14mDoHIO_entry_c",'name':"__vt__14mDoHIO_entry_c",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':True,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C1F958,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C1F960,'size':12,'pad':0,'label':"lit_3621",'name':"@3621",'lib':-1,'tu':2,'section':4,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C1F96C,'size':4,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__16daHsTarget_HIO_cFv":5,
	"__dt__14mDoHIO_entry_cFv":6,
	"setBaseMtx__12daHsTarget_cFv":7,
	"CreateHeap__12daHsTarget_cFv":8,
	"create__12daHsTarget_cFv":9,
	"Execute__12daHsTarget_cFPPA3_A4_f":10,
	"Draw__12daHsTarget_cFv":11,
	"Delete__12daHsTarget_cFv":12,
	"daHsTarget_Draw__FP12daHsTarget_c":13,
	"daHsTarget_Execute__FP12daHsTarget_c":14,
	"daHsTarget_Delete__FP12daHsTarget_c":15,
	"daHsTarget_Create__FP10fopAc_ac_c":16,
	"__dt__16daHsTarget_HIO_cFv":17,
	"__sinit_d_a_obj_hsTarget_cpp":18,
	"data_80C1F88C":19,
	"__destroy_global_chain_reference":20,
	"pad_80C1F898":21,
	"l_bmdIdx":22,
	"l_dzbIdx":23,
	"struct_80C1F8B0":24,
	"l_resNameIdx":25,
	"l_daHsTarget_Method":26,
	"g_profile_Obj_HsTarget":27,
	"__vt__12daHsTarget_c":28,
	"__vt__16daHsTarget_HIO_c":29,
	"__vt__14mDoHIO_entry_c":30,
	"__global_destructor_chain":31,
	"lit_3621":32,
	"l_HIO":33,
}

