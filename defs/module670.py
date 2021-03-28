#
# Generate By: dol2asm
# Module: 670
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_treesh",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_obj_treesh",
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
	{'addr':0x80D1EFE0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F00C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F038,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F058,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F074,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F0CC,'size':64,'pad':0,'label':"__ct__14daTreeSh_HIO_cFv",'name':"__ct__14daTreeSh_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F10C,'size':60,'pad':0,'label':"__dt__5csXyzFv",'name':"__dt__5csXyzFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F148,'size':72,'pad':0,'label':"__dt__14mDoHIO_entry_cFv",'name':"__dt__14mDoHIO_entry_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F190,'size':200,'pad':0,'label':"nodeCallBack__FP8J3DJointi",'name':"nodeCallBack__FP8J3DJointi",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F258,'size':60,'pad':0,'label':"initBaseMtx__10daTreeSh_cFv",'name':"initBaseMtx__10daTreeSh_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F294,'size':84,'pad':0,'label':"setBaseMtx__10daTreeSh_cFv",'name':"setBaseMtx__10daTreeSh_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F2E8,'size':112,'pad':0,'label':"CreateHeap__10daTreeSh_cFv",'name':"CreateHeap__10daTreeSh_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F358,'size':188,'pad':0,'label':"Create__10daTreeSh_cFv",'name':"Create__10daTreeSh_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F414,'size':136,'pad':0,'label':"create1st__10daTreeSh_cFv",'name':"create1st__10daTreeSh_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F49C,'size':428,'pad':0,'label':"Execute__10daTreeSh_cFPPA3_A4_f",'name':"Execute__10daTreeSh_cFPPA3_A4_f",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F648,'size':164,'pad':0,'label':"Draw__10daTreeSh_cFv",'name':"Draw__10daTreeSh_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F6EC,'size':52,'pad':0,'label':"Delete__10daTreeSh_cFv",'name':"Delete__10daTreeSh_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F720,'size':140,'pad':0,'label':"daTreeSh_create1st__FP10daTreeSh_c",'name':"daTreeSh_create1st__FP10daTreeSh_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F7AC,'size':4,'pad':0,'label':"__ct__5csXyzFv",'name':"__ct__5csXyzFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D1F7B0,'size':32,'pad':0,'label':"daTreeSh_MoveBGDelete__FP10daTreeSh_c",'name':"daTreeSh_MoveBGDelete__FP10daTreeSh_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F7D0,'size':32,'pad':0,'label':"daTreeSh_MoveBGExecute__FP10daTreeSh_c",'name':"daTreeSh_MoveBGExecute__FP10daTreeSh_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F7F0,'size':44,'pad':0,'label':"daTreeSh_MoveBGDraw__FP10daTreeSh_c",'name':"daTreeSh_MoveBGDraw__FP10daTreeSh_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F81C,'size':92,'pad':0,'label':"__dt__14daTreeSh_HIO_cFv",'name':"__dt__14daTreeSh_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F878,'size':60,'pad':0,'label':"__sinit_d_a_obj_treesh_cpp",'name':"__sinit_d_a_obj_treesh_cpp",'lib':-1,'tu':2,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1F8B4,'size':8,'pad':0,'label':"data_80D1F8B4",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D1F8BC,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D1F8C0,'size':8,'pad':0,'label':"pad_80D1F8C0",'name':None,'lib':1,'tu':3,'section':5,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D1F8C8,'size':4,'pad':0,'label':"lit_3767",'name':"@3767",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D1F8CC,'size':4,'pad':0,'label':"lit_3768",'name':"@3768",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D1F8D0,'size':4,'pad':0,'label':"lit_3769",'name':"@3769",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D1F8D4,'size':4,'pad':0,'label':"lit_3770",'name':"@3770",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D1F8D8,'size':4,'pad':4,'label':"lit_3771",'name':"@3771",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D1F8E0,'size':8,'pad':0,'label':"lit_3774",'name':"@3774",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D1F8E8,'size':9,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D1F8F4,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':2,'section':3,'r':[4,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D1F8F8,'size':32,'pad':0,'label':"daTreeSh_METHODS",'name':"daTreeSh_METHODS",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D1F918,'size':48,'pad':0,'label':"g_profile_TREESH",'name':"g_profile_TREESH",'lib':-1,'tu':2,'section':3,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D1F948,'size':40,'pad':0,'label':"__vt__10daTreeSh_c",'name':"__vt__10daTreeSh_c",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D1F970,'size':12,'pad':0,'label':"__vt__14daTreeSh_HIO_c",'name':"__vt__14daTreeSh_HIO_c",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D1F97C,'size':12,'pad':0,'label':"__vt__14mDoHIO_entry_c",'name':"__vt__14mDoHIO_entry_c",'lib':-1,'tu':2,'section':3,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D1F988,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D1F990,'size':12,'pad':0,'label':"lit_3618",'name':"@3618",'lib':-1,'tu':2,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D1F99C,'size':16,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__14daTreeSh_HIO_cFv":5,
	"__dt__5csXyzFv":6,
	"__dt__14mDoHIO_entry_cFv":7,
	"nodeCallBack__FP8J3DJointi":8,
	"initBaseMtx__10daTreeSh_cFv":9,
	"setBaseMtx__10daTreeSh_cFv":10,
	"CreateHeap__10daTreeSh_cFv":11,
	"Create__10daTreeSh_cFv":12,
	"create1st__10daTreeSh_cFv":13,
	"Execute__10daTreeSh_cFPPA3_A4_f":14,
	"Draw__10daTreeSh_cFv":15,
	"Delete__10daTreeSh_cFv":16,
	"daTreeSh_create1st__FP10daTreeSh_c":17,
	"__ct__5csXyzFv":18,
	"daTreeSh_MoveBGDelete__FP10daTreeSh_c":19,
	"daTreeSh_MoveBGExecute__FP10daTreeSh_c":20,
	"daTreeSh_MoveBGDraw__FP10daTreeSh_c":21,
	"__dt__14daTreeSh_HIO_cFv":22,
	"__sinit_d_a_obj_treesh_cpp":23,
	"data_80D1F8B4":24,
	"__destroy_global_chain_reference":25,
	"pad_80D1F8C0":26,
	"lit_3767":27,
	"lit_3768":28,
	"lit_3769":29,
	"lit_3770":30,
	"lit_3771":31,
	"lit_3774":32,
	"stringBase0":33,
	"l_arcName":34,
	"daTreeSh_METHODS":35,
	"g_profile_TREESH":36,
	"__vt__10daTreeSh_c":37,
	"__vt__14daTreeSh_HIO_c":38,
	"__vt__14mDoHIO_entry_c":39,
	"__global_destructor_chain":40,
	"lit_3618":41,
	"l_HIO":42,
}

