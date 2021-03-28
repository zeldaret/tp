#
# Generate By: dol2asm
# Module: 684
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_web0",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_obj_web0",
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
	{'addr':0x80D34440,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3446C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D34498,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D344B8,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D344D4,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3452C,'size':24,'pad':0,'label':"__ct__16daObj_Web0_HIO_cFv",'name':"__ct__16daObj_Web0_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D34544,'size':124,'pad':0,'label':"daObj_Web0_Draw__FP14obj_web0_class",'name':"daObj_Web0_Draw__FP14obj_web0_class",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D345C0,'size':468,'pad':0,'label':"damage_check__FP14obj_web0_class",'name':"damage_check__FP14obj_web0_class",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D34794,'size':912,'pad':0,'label':"daObj_Web0_Execute__FP14obj_web0_class",'name':"daObj_Web0_Execute__FP14obj_web0_class",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D34B24,'size':8,'pad':0,'label':"daObj_Web0_IsDelete__FP14obj_web0_class",'name':"daObj_Web0_IsDelete__FP14obj_web0_class",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D34B2C,'size':104,'pad':0,'label':"daObj_Web0_Delete__FP14obj_web0_class",'name':"daObj_Web0_Delete__FP14obj_web0_class",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D34B94,'size':432,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D34D44,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D34D8C,'size':712,'pad':0,'label':"daObj_Web0_Create__FP10fopAc_ac_c",'name':"daObj_Web0_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D35054,'size':72,'pad':0,'label':"__dt__8cM3dGSphFv",'name':"__dt__8cM3dGSphFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3509C,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D350E4,'size':72,'pad':0,'label':"__dt__16daObj_Web0_HIO_cFv",'name':"__dt__16daObj_Web0_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3512C,'size':60,'pad':0,'label':"__sinit_d_a_obj_web0_cpp",'name':"__sinit_d_a_obj_web0_cpp",'lib':-1,'tu':2,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D35168,'size':8,'pad':0,'label':"data_80D35168",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D35170,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D35174,'size':8,'pad':0,'label':"pad_80D35174",'name':None,'lib':1,'tu':3,'section':5,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D3517C,'size':4,'pad':0,'label':"lit_3724",'name':"@3724",'lib':-1,'tu':2,'section':2,'r':[3,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D35180,'size':4,'pad':0,'label':"lit_3725",'name':"@3725",'lib':-1,'tu':2,'section':2,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D35184,'size':4,'pad':0,'label':"lit_3726",'name':"@3726",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D35188,'size':4,'pad':0,'label':"lit_3850",'name':"@3850",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D3518C,'size':4,'pad':0,'label':"lit_3851",'name':"@3851",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D35190,'size':4,'pad':0,'label':"lit_3852",'name':"@3852",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D35194,'size':4,'pad':4,'label':"lit_3853",'name':"@3853",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D3519C,'size':8,'pad':0,'label':"lit_3855",'name':"@3855",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D351A4,'size':4,'pad':0,'label':"lit_3917",'name':"@3917",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D351A8,'size':4,'pad':0,'label':"lit_4014",'name':"@4014",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D351AC,'size':4,'pad':4,'label':"lit_4015",'name':"@4015",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D351B4,'size':8,'pad':0,'label':"lit_4017",'name':"@4017",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D351BC,'size':9,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':2,'section':2,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D351C8,'size':64,'pad':0,'label':"cc_sph_src",'name':"cc_sph_src$3944",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D35208,'size':32,'pad':0,'label':"l_daObj_Web0_Method",'name':"l_daObj_Web0_Method",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D35228,'size':48,'pad':0,'label':"g_profile_OBJ_WEB0",'name':"g_profile_OBJ_WEB0",'lib':-1,'tu':2,'section':3,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D35258,'size':12,'pad':0,'label':"__vt__8cM3dGSph",'name':"__vt__8cM3dGSph",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D35264,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D35270,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D3527C,'size':12,'pad':0,'label':"__vt__16daObj_Web0_HIO_c",'name':"__vt__16daObj_Web0_HIO_c",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D35288,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D35290,'size':4,'pad':0,'label':"data_80D35290",'name':None,'lib':-1,'tu':2,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D35294,'size':12,'pad':0,'label':"lit_3643",'name':"@3643",'lib':-1,'tu':2,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D352A0,'size':8,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__16daObj_Web0_HIO_cFv":5,
	"daObj_Web0_Draw__FP14obj_web0_class":6,
	"damage_check__FP14obj_web0_class":7,
	"daObj_Web0_Execute__FP14obj_web0_class":8,
	"daObj_Web0_IsDelete__FP14obj_web0_class":9,
	"daObj_Web0_Delete__FP14obj_web0_class":10,
	"useHeapInit__FP10fopAc_ac_c":11,
	"__dt__12J3DFrameCtrlFv":12,
	"daObj_Web0_Create__FP10fopAc_ac_c":13,
	"__dt__8cM3dGSphFv":14,
	"__dt__8cM3dGAabFv":15,
	"__dt__16daObj_Web0_HIO_cFv":16,
	"__sinit_d_a_obj_web0_cpp":17,
	"data_80D35168":18,
	"__destroy_global_chain_reference":19,
	"pad_80D35174":20,
	"lit_3724":21,
	"lit_3725":22,
	"lit_3726":23,
	"lit_3850":24,
	"lit_3851":25,
	"lit_3852":26,
	"lit_3853":27,
	"lit_3855":28,
	"lit_3917":29,
	"lit_4014":30,
	"lit_4015":31,
	"lit_4017":32,
	"stringBase0":33,
	"cc_sph_src":34,
	"l_daObj_Web0_Method":35,
	"g_profile_OBJ_WEB0":36,
	"__vt__8cM3dGSph":37,
	"__vt__8cM3dGAab":38,
	"__vt__12J3DFrameCtrl":39,
	"__vt__16daObj_Web0_HIO_c":40,
	"__global_destructor_chain":41,
	"data_80D35290":42,
	"lit_3643":43,
	"l_HIO":44,
}

