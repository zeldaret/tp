#
# Generate By: dol2asm
# Module: 67
#

# Libraries
LIBRARIES = [
	"d/a/e/d_a_e_ga",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_e_ga",
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
	{'addr':0x804FB000,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB02C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB058,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB078,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'class_template':None,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB094,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'class_template':None,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB0EC,'size':36,'pad':0,'label':"__ct__12daE_Ga_HIO_cFv",'name':"__ct__12daE_Ga_HIO_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB110,'size':160,'pad':0,'label':"daE_Ga_Draw__FP10e_ga_class",'name':"daE_Ga_Draw__FP10e_ga_class",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB1B0,'size':504,'pad':0,'label':"ga_fly__FP10e_ga_classP4ga_s",'name':"ga_fly__FP10e_ga_classP4ga_s",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB3A8,'size':536,'pad':0,'label':"bt_fly__FP10e_ga_classP4ga_s",'name':"bt_fly__FP10e_ga_classP4ga_s",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB5C0,'size':312,'pad':0,'label':"ga_control__FP10e_ga_class",'name':"ga_control__FP10e_ga_class",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB6F8,'size':36,'pad':0,'label':"daE_Ga_Execute__FP10e_ga_class",'name':"daE_Ga_Execute__FP10e_ga_class",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB71C,'size':8,'pad':0,'label':"daE_Ga_IsDelete__FP10e_ga_class",'name':"daE_Ga_IsDelete__FP10e_ga_class",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x804FB724,'size':160,'pad':0,'label':"daE_Ga_Delete__FP10e_ga_class",'name':"daE_Ga_Delete__FP10e_ga_class",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB7C4,'size':176,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FB874,'size':580,'pad':0,'label':"daE_Ga_Create__FP10fopAc_ac_c",'name':"daE_Ga_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FBAB8,'size':60,'pad':0,'label':"__dt__4ga_sFv",'name':"__dt__4ga_sFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FBAF4,'size':4,'pad':0,'label':"__ct__4ga_sFv",'name':"__ct__4ga_sFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x804FBAF8,'size':72,'pad':0,'label':"__dt__12daE_Ga_HIO_cFv",'name':"__dt__12daE_Ga_HIO_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804FBB40,'size':60,'pad':0,'label':"__sinit_d_a_e_ga_cpp",'name':"__sinit_d_a_e_ga_cpp",'lib':-1,'tu':2,'section':0,'class_template':None,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x804FBB7C,'size':8,'pad':0,'label':"data_804FBB7C",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804FBB84,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804FBB88,'size':8,'pad':0,'label':"pad_804FBB88",'name':None,'lib':1,'tu':3,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804FBB90,'size':4,'pad':0,'label':"lit_3646",'name':"@3646",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[5,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804FBB94,'size':4,'pad':0,'label':"lit_3713",'name':"@3713",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804FBB98,'size':4,'pad':0,'label':"lit_3714",'name':"@3714",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804FBB9C,'size':4,'pad':0,'label':"lit_3715",'name':"@3715",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804FBBA0,'size':4,'pad':4,'label':"lit_3716",'name':"@3716",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804FBBA8,'size':8,'pad':0,'label':"lit_3718",'name':"@3718",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804FBBB0,'size':4,'pad':0,'label':"lit_3759",'name':"@3759",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804FBBB4,'size':4,'pad':0,'label':"lit_3760",'name':"@3760",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804FBBB8,'size':4,'pad':0,'label':"lit_3796",'name':"@3796",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804FBBBC,'size':4,'pad':0,'label':"lit_3797",'name':"@3797",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804FBBC0,'size':4,'pad':0,'label':"data_804FBBC0",'name':"l_bmdidx$3809",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804FBBC4,'size':4,'pad':0,'label':"lit_3912",'name':"@3912",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804FBBC8,'size':4,'pad':0,'label':"lit_3913",'name':"@3913",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804FBBCC,'size':4,'pad':0,'label':"lit_3914",'name':"@3914",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804FBBD0,'size':4,'pad':0,'label':"lit_3915",'name':"@3915",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804FBBD4,'size':10,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x804FBBE0,'size':32,'pad':0,'label':"l_daE_Ga_Method",'name':"l_daE_Ga_Method",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804FBC00,'size':48,'pad':0,'label':"g_profile_E_GA",'name':"g_profile_E_GA",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804FBC30,'size':12,'pad':0,'label':"__vt__12daE_Ga_HIO_c",'name':"__vt__12daE_Ga_HIO_c",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x804FBC40,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804FBC48,'size':4,'pad':0,'label':"data_804FBC48",'name':None,'lib':-1,'tu':2,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804FBC4C,'size':12,'pad':0,'label':"lit_3641",'name':"@3641",'lib':-1,'tu':2,'section':4,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804FBC58,'size':12,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__12daE_Ga_HIO_cFv":5,
	"daE_Ga_Draw__FP10e_ga_class":6,
	"ga_fly__FP10e_ga_classP4ga_s":7,
	"bt_fly__FP10e_ga_classP4ga_s":8,
	"ga_control__FP10e_ga_class":9,
	"daE_Ga_Execute__FP10e_ga_class":10,
	"daE_Ga_IsDelete__FP10e_ga_class":11,
	"daE_Ga_Delete__FP10e_ga_class":12,
	"useHeapInit__FP10fopAc_ac_c":13,
	"daE_Ga_Create__FP10fopAc_ac_c":14,
	"__dt__4ga_sFv":15,
	"__ct__4ga_sFv":16,
	"__dt__12daE_Ga_HIO_cFv":17,
	"__sinit_d_a_e_ga_cpp":18,
	"data_804FBB7C":19,
	"__destroy_global_chain_reference":20,
	"pad_804FBB88":21,
	"lit_3646":22,
	"lit_3713":23,
	"lit_3714":24,
	"lit_3715":25,
	"lit_3716":26,
	"lit_3718":27,
	"lit_3759":28,
	"lit_3760":29,
	"lit_3796":30,
	"lit_3797":31,
	"data_804FBBC0":32,
	"lit_3912":33,
	"lit_3913":34,
	"lit_3914":35,
	"lit_3915":36,
	"stringBase0":37,
	"l_daE_Ga_Method":38,
	"g_profile_E_GA":39,
	"__vt__12daE_Ga_HIO_c":40,
	"__global_destructor_chain":41,
	"data_804FBC48":42,
	"lit_3641":43,
	"l_HIO":44,
}

