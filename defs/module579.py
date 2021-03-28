#
# Generate By: dol2asm
# Module: 579
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_myogan",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_obj_myogan",
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
	{'addr':0x80C9EAC0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9EAEC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9EB18,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9EB38,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9EB54,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9EBAC,'size':48,'pad':0,'label':"__ct__18daObj_Myogan_HIO_cFv",'name':"__ct__18daObj_Myogan_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9EBDC,'size':148,'pad':0,'label':"daObj_Myogan_Draw__FP16obj_myogan_class",'name':"daObj_Myogan_Draw__FP16obj_myogan_class",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9EC70,'size':236,'pad':0,'label':"action__FP16obj_myogan_class",'name':"action__FP16obj_myogan_class",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9ED5C,'size':92,'pad':0,'label':"daObj_Myogan_Execute__FP16obj_myogan_class",'name':"daObj_Myogan_Execute__FP16obj_myogan_class",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9EDB8,'size':8,'pad':0,'label':"daObj_Myogan_IsDelete__FP16obj_myogan_class",'name':"daObj_Myogan_IsDelete__FP16obj_myogan_class",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C9EDC0,'size':104,'pad':0,'label':"daObj_Myogan_Delete__FP16obj_myogan_class",'name':"daObj_Myogan_Delete__FP16obj_myogan_class",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9EE28,'size':572,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9F064,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9F0AC,'size':324,'pad':0,'label':"daObj_Myogan_Create__FP10fopAc_ac_c",'name':"daObj_Myogan_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9F1F0,'size':72,'pad':0,'label':"__dt__18daObj_Myogan_HIO_cFv",'name':"__dt__18daObj_Myogan_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9F238,'size':60,'pad':0,'label':"__sinit_d_a_obj_myogan_cpp",'name':"__sinit_d_a_obj_myogan_cpp",'lib':-1,'tu':2,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9F274,'size':8,'pad':0,'label':"data_80C9F274",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C9F27C,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C9F280,'size':8,'pad':0,'label':"pad_80C9F280",'name':None,'lib':1,'tu':3,'section':5,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C9F288,'size':4,'pad':0,'label':"lit_3762",'name':"@3762",'lib':-1,'tu':2,'section':2,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C9F28C,'size':4,'pad':0,'label':"lit_3763",'name':"@3763",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C9F290,'size':4,'pad':0,'label':"lit_3823",'name':"@3823",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C9F294,'size':4,'pad':0,'label':"lit_3824",'name':"@3824",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C9F298,'size':4,'pad':0,'label':"lit_3966",'name':"@3966",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C9F29C,'size':4,'pad':0,'label':"lit_3967",'name':"@3967",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C9F2A0,'size':8,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':2,'section':2,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80C9F2A8,'size':32,'pad':0,'label':"l_daObj_Myogan_Method",'name':"l_daObj_Myogan_Method",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C9F2C8,'size':48,'pad':0,'label':"g_profile_OBJ_MYOGAN",'name':"g_profile_OBJ_MYOGAN",'lib':-1,'tu':2,'section':3,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C9F2F8,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C9F304,'size':12,'pad':0,'label':"__vt__18daObj_Myogan_HIO_c",'name':"__vt__18daObj_Myogan_HIO_c",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C9F310,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C9F318,'size':4,'pad':0,'label':"data_80C9F318",'name':None,'lib':-1,'tu':2,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C9F31C,'size':12,'pad':0,'label':"lit_3757",'name':"@3757",'lib':-1,'tu':2,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C9F328,'size':16,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__18daObj_Myogan_HIO_cFv":5,
	"daObj_Myogan_Draw__FP16obj_myogan_class":6,
	"action__FP16obj_myogan_class":7,
	"daObj_Myogan_Execute__FP16obj_myogan_class":8,
	"daObj_Myogan_IsDelete__FP16obj_myogan_class":9,
	"daObj_Myogan_Delete__FP16obj_myogan_class":10,
	"useHeapInit__FP10fopAc_ac_c":11,
	"__dt__12J3DFrameCtrlFv":12,
	"daObj_Myogan_Create__FP10fopAc_ac_c":13,
	"__dt__18daObj_Myogan_HIO_cFv":14,
	"__sinit_d_a_obj_myogan_cpp":15,
	"data_80C9F274":16,
	"__destroy_global_chain_reference":17,
	"pad_80C9F280":18,
	"lit_3762":19,
	"lit_3763":20,
	"lit_3823":21,
	"lit_3824":22,
	"lit_3966":23,
	"lit_3967":24,
	"stringBase0":25,
	"l_daObj_Myogan_Method":26,
	"g_profile_OBJ_MYOGAN":27,
	"__vt__12J3DFrameCtrl":28,
	"__vt__18daObj_Myogan_HIO_c":29,
	"__global_destructor_chain":30,
	"data_80C9F318":31,
	"lit_3757":32,
	"l_HIO":33,
}

