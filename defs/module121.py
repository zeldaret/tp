#
# Generate By: dol2asm
# Module: 121
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_cstasw",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_tag_CstaSw",
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
	{'addr':0x805A1F40,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1F6C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1F98,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1FB8,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1FD4,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A202C,'size':36,'pad':0,'label':"__ct__17daTagCstaSw_HIO_cFv",'name':"__ct__17daTagCstaSw_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2050,'size':72,'pad':0,'label':"__dt__14mDoHIO_entry_cFv",'name':"__dt__14mDoHIO_entry_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2098,'size':88,'pad':0,'label':"setBaseMtx__13daTagCstaSw_cFv",'name':"setBaseMtx__13daTagCstaSw_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A20F0,'size':96,'pad':0,'label':"create__13daTagCstaSw_cFv",'name':"create__13daTagCstaSw_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2150,'size':80,'pad':0,'label':"searchSekizoAct__13daTagCstaSw_cFPvPv",'name':"searchSekizoAct__13daTagCstaSw_cFPvPv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A21A0,'size':416,'pad':0,'label':"areaCheck__13daTagCstaSw_cFv",'name':"areaCheck__13daTagCstaSw_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2340,'size':176,'pad':0,'label':"Execute__13daTagCstaSw_cFv",'name':"Execute__13daTagCstaSw_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A23F0,'size':8,'pad':0,'label':"Draw__13daTagCstaSw_cFv",'name':"Draw__13daTagCstaSw_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x805A23F8,'size':8,'pad':0,'label':"Delete__13daTagCstaSw_cFv",'name':"Delete__13daTagCstaSw_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x805A2400,'size':32,'pad':0,'label':"daTagCstaSw_Draw__FP13daTagCstaSw_c",'name':"daTagCstaSw_Draw__FP13daTagCstaSw_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2420,'size':32,'pad':0,'label':"daTagCstaSw_Execute__FP13daTagCstaSw_c",'name':"daTagCstaSw_Execute__FP13daTagCstaSw_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2440,'size':32,'pad':0,'label':"daTagCstaSw_Delete__FP13daTagCstaSw_c",'name':"daTagCstaSw_Delete__FP13daTagCstaSw_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2460,'size':32,'pad':0,'label':"daTagCstaSw_Create__FP10fopAc_ac_c",'name':"daTagCstaSw_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2480,'size':92,'pad':0,'label':"__dt__17daTagCstaSw_HIO_cFv",'name':"__dt__17daTagCstaSw_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A24DC,'size':60,'pad':0,'label':"__sinit_d_a_tag_CstaSw_cpp",'name':"__sinit_d_a_tag_CstaSw_cpp",'lib':-1,'tu':2,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2518,'size':8,'pad':0,'label':"data_805A2518",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A2520,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A2524,'size':8,'pad':0,'label':"pad_805A2524",'name':None,'lib':1,'tu':3,'section':5,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A252C,'size':4,'pad':4,'label':"lit_3724",'name':"@3724",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A2534,'size':8,'pad':0,'label':"lit_3725",'name':"@3725",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A253C,'size':8,'pad':0,'label':"lit_3726",'name':"@3726",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A2544,'size':8,'pad':0,'label':"lit_3727",'name':"@3727",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A254C,'size':4,'pad':0,'label':"lit_3728",'name':"@3728",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A2550,'size':32,'pad':0,'label':"l_daTagCstaSw_Method",'name':"l_daTagCstaSw_Method",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A2570,'size':48,'pad':0,'label':"g_profile_Tag_CstaSw",'name':"g_profile_Tag_CstaSw",'lib':-1,'tu':2,'section':3,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A25A0,'size':12,'pad':0,'label':"__vt__17daTagCstaSw_HIO_c",'name':"__vt__17daTagCstaSw_HIO_c",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A25AC,'size':12,'pad':0,'label':"__vt__14mDoHIO_entry_c",'name':"__vt__14mDoHIO_entry_c",'lib':-1,'tu':2,'section':3,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A25B8,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A25C0,'size':12,'pad':0,'label':"lit_3619",'name':"@3619",'lib':-1,'tu':2,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A25CC,'size':8,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__17daTagCstaSw_HIO_cFv":5,
	"__dt__14mDoHIO_entry_cFv":6,
	"setBaseMtx__13daTagCstaSw_cFv":7,
	"create__13daTagCstaSw_cFv":8,
	"searchSekizoAct__13daTagCstaSw_cFPvPv":9,
	"areaCheck__13daTagCstaSw_cFv":10,
	"Execute__13daTagCstaSw_cFv":11,
	"Draw__13daTagCstaSw_cFv":12,
	"Delete__13daTagCstaSw_cFv":13,
	"daTagCstaSw_Draw__FP13daTagCstaSw_c":14,
	"daTagCstaSw_Execute__FP13daTagCstaSw_c":15,
	"daTagCstaSw_Delete__FP13daTagCstaSw_c":16,
	"daTagCstaSw_Create__FP10fopAc_ac_c":17,
	"__dt__17daTagCstaSw_HIO_cFv":18,
	"__sinit_d_a_tag_CstaSw_cpp":19,
	"data_805A2518":20,
	"__destroy_global_chain_reference":21,
	"pad_805A2524":22,
	"lit_3724":23,
	"lit_3725":24,
	"lit_3726":25,
	"lit_3727":26,
	"lit_3728":27,
	"l_daTagCstaSw_Method":28,
	"g_profile_Tag_CstaSw":29,
	"__vt__17daTagCstaSw_HIO_c":30,
	"__vt__14mDoHIO_entry_c":31,
	"__global_destructor_chain":32,
	"lit_3619":33,
	"l_HIO":34,
}

