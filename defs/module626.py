#
# Generate By: dol2asm
# Module: 626
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_snowEffTag",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_obj_snowEffTag",
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
	{'addr':0x80CDEFC0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDEFEC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF018,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF038,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF054,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF0AC,'size':56,'pad':0,'label':"__ct__18daSnowEffTag_HIO_cFv",'name':"__ct__18daSnowEffTag_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF0E4,'size':72,'pad':0,'label':"__dt__14mDoHIO_entry_cFv",'name':"__dt__14mDoHIO_entry_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF12C,'size':88,'pad':0,'label':"setBaseMtx__14daSnowEffTag_cFv",'name':"setBaseMtx__14daSnowEffTag_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF184,'size':308,'pad':0,'label':"create__14daSnowEffTag_cFv",'name':"create__14daSnowEffTag_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF2B8,'size':480,'pad':0,'label':"playerAreaCheck__14daSnowEffTag_cFv",'name':"playerAreaCheck__14daSnowEffTag_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF498,'size':332,'pad':0,'label':"Execute__14daSnowEffTag_cFv",'name':"Execute__14daSnowEffTag_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF5E4,'size':8,'pad':0,'label':"Draw__14daSnowEffTag_cFv",'name':"Draw__14daSnowEffTag_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80CDF5EC,'size':8,'pad':0,'label':"Delete__14daSnowEffTag_cFv",'name':"Delete__14daSnowEffTag_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80CDF5F4,'size':32,'pad':0,'label':"daSnowEffTag_Draw__FP14daSnowEffTag_c",'name':"daSnowEffTag_Draw__FP14daSnowEffTag_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF614,'size':32,'pad':0,'label':"daSnowEffTag_Execute__FP14daSnowEffTag_c",'name':"daSnowEffTag_Execute__FP14daSnowEffTag_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF634,'size':32,'pad':0,'label':"daSnowEffTag_Delete__FP14daSnowEffTag_c",'name':"daSnowEffTag_Delete__FP14daSnowEffTag_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF654,'size':32,'pad':0,'label':"daSnowEffTag_Create__FP10fopAc_ac_c",'name':"daSnowEffTag_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF674,'size':92,'pad':0,'label':"__dt__18daSnowEffTag_HIO_cFv",'name':"__dt__18daSnowEffTag_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF6D0,'size':60,'pad':0,'label':"__sinit_d_a_obj_snowEffTag_cpp",'name':"__sinit_d_a_obj_snowEffTag_cpp",'lib':-1,'tu':2,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDF70C,'size':8,'pad':0,'label':"data_80CDF70C",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CDF714,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CDF718,'size':8,'pad':0,'label':"pad_80CDF718",'name':None,'lib':1,'tu':3,'section':5,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CDF720,'size':4,'pad':0,'label':"lit_3702",'name':"@3702",'lib':-1,'tu':2,'section':2,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CDF724,'size':4,'pad':0,'label':"lit_3703",'name':"@3703",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CDF728,'size':4,'pad':0,'label':"lit_3704",'name':"@3704",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CDF72C,'size':4,'pad':0,'label':"lit_3705",'name':"@3705",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CDF730,'size':4,'pad':4,'label':"lit_3765",'name':"@3765",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CDF738,'size':8,'pad':0,'label':"lit_3766",'name':"@3766",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CDF740,'size':8,'pad':0,'label':"lit_3767",'name':"@3767",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CDF748,'size':8,'pad':0,'label':"lit_3768",'name':"@3768",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CDF750,'size':4,'pad':0,'label':"lit_3806",'name':"@3806",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CDF754,'size':4,'pad':0,'label':"lit_3807",'name':"@3807",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CDF758,'size':32,'pad':0,'label':"l_daSnowEffTag_Method",'name':"l_daSnowEffTag_Method",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CDF778,'size':48,'pad':0,'label':"g_profile_Tag_SnowEff",'name':"g_profile_Tag_SnowEff",'lib':-1,'tu':2,'section':3,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CDF7A8,'size':12,'pad':0,'label':"__vt__18daSnowEffTag_HIO_c",'name':"__vt__18daSnowEffTag_HIO_c",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CDF7B4,'size':12,'pad':0,'label':"__vt__14mDoHIO_entry_c",'name':"__vt__14mDoHIO_entry_c",'lib':-1,'tu':2,'section':3,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CDF7C0,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CDF7C8,'size':12,'pad':0,'label':"lit_3643",'name':"@3643",'lib':-1,'tu':2,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CDF7D4,'size':8,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__18daSnowEffTag_HIO_cFv":5,
	"__dt__14mDoHIO_entry_cFv":6,
	"setBaseMtx__14daSnowEffTag_cFv":7,
	"create__14daSnowEffTag_cFv":8,
	"playerAreaCheck__14daSnowEffTag_cFv":9,
	"Execute__14daSnowEffTag_cFv":10,
	"Draw__14daSnowEffTag_cFv":11,
	"Delete__14daSnowEffTag_cFv":12,
	"daSnowEffTag_Draw__FP14daSnowEffTag_c":13,
	"daSnowEffTag_Execute__FP14daSnowEffTag_c":14,
	"daSnowEffTag_Delete__FP14daSnowEffTag_c":15,
	"daSnowEffTag_Create__FP10fopAc_ac_c":16,
	"__dt__18daSnowEffTag_HIO_cFv":17,
	"__sinit_d_a_obj_snowEffTag_cpp":18,
	"data_80CDF70C":19,
	"__destroy_global_chain_reference":20,
	"pad_80CDF718":21,
	"lit_3702":22,
	"lit_3703":23,
	"lit_3704":24,
	"lit_3705":25,
	"lit_3765":26,
	"lit_3766":27,
	"lit_3767":28,
	"lit_3768":29,
	"lit_3806":30,
	"lit_3807":31,
	"l_daSnowEffTag_Method":32,
	"g_profile_Tag_SnowEff":33,
	"__vt__18daSnowEffTag_HIO_c":34,
	"__vt__14mDoHIO_entry_c":35,
	"__global_destructor_chain":36,
	"lit_3643":37,
	"l_HIO":38,
}

