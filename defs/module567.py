#
# Generate By: dol2asm
# Module: 567
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_maki",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_obj_maki",
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
	{'addr':0x80C8FD20,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C8FD4C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C8FD78,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C8FD98,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C8FDB4,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C8FE0C,'size':24,'pad':0,'label':"__ct__16daObj_Maki_HIO_cFv",'name':"__ct__16daObj_Maki_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C8FE24,'size':184,'pad':0,'label':"daObj_Maki_Draw__FP14obj_maki_class",'name':"daObj_Maki_Draw__FP14obj_maki_class",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C8FEDC,'size':1180,'pad':0,'label':"daObj_Maki_Execute__FP14obj_maki_class",'name':"daObj_Maki_Execute__FP14obj_maki_class",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C90378,'size':8,'pad':0,'label':"daObj_Maki_IsDelete__FP14obj_maki_class",'name':"daObj_Maki_IsDelete__FP14obj_maki_class",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C90380,'size':112,'pad':0,'label':"daObj_Maki_Delete__FP14obj_maki_class",'name':"daObj_Maki_Delete__FP14obj_maki_class",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C903F0,'size':340,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C90544,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9058C,'size':640,'pad':0,'label':"daObj_Maki_Create__FP10fopAc_ac_c",'name':"daObj_Maki_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9080C,'size':72,'pad':0,'label':"__dt__8cM3dGSphFv",'name':"__dt__8cM3dGSphFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C90854,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C9089C,'size':72,'pad':0,'label':"__dt__16daObj_Maki_HIO_cFv",'name':"__dt__16daObj_Maki_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C908E4,'size':60,'pad':0,'label':"__sinit_d_a_obj_maki_cpp",'name':"__sinit_d_a_obj_maki_cpp",'lib':-1,'tu':2,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C90920,'size':8,'pad':0,'label':"data_80C90920",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C90928,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C9092C,'size':8,'pad':0,'label':"pad_80C9092C",'name':None,'lib':1,'tu':3,'section':5,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C90934,'size':4,'pad':0,'label':"lit_3928",'name':"@3928",'lib':-1,'tu':2,'section':2,'r':[3,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C90938,'size':4,'pad':0,'label':"lit_3929",'name':"@3929",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C9093C,'size':4,'pad':0,'label':"lit_3930",'name':"@3930",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C90940,'size':4,'pad':0,'label':"lit_3931",'name':"@3931",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C90944,'size':4,'pad':0,'label':"lit_3932",'name':"@3932",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C90948,'size':4,'pad':0,'label':"lit_3933",'name':"@3933",'lib':-1,'tu':2,'section':2,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C9094C,'size':4,'pad':0,'label':"lit_3934",'name':"@3934",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C90950,'size':4,'pad':0,'label':"lit_3935",'name':"@3935",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C90954,'size':4,'pad':0,'label':"lit_4075",'name':"@4075",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C90958,'size':4,'pad':0,'label':"lit_4076",'name':"@4076",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C9095C,'size':4,'pad':0,'label':"lit_4077",'name':"@4077",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C90960,'size':17,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':2,'section':2,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80C90974,'size':10,'pad':2,'label':"eff_id_3814",'name':"eff_id$3814",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C90980,'size':4,'pad':0,'label':"eff_id_3833",'name':"eff_id$3833",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C90984,'size':64,'pad':0,'label':"cc_sph_src",'name':"cc_sph_src$4010",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C909C4,'size':32,'pad':0,'label':"l_daObj_Maki_Method",'name':"l_daObj_Maki_Method",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C909E4,'size':48,'pad':0,'label':"g_profile_OBJ_MAKI",'name':"g_profile_OBJ_MAKI",'lib':-1,'tu':2,'section':3,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C90A14,'size':12,'pad':0,'label':"__vt__8cM3dGSph",'name':"__vt__8cM3dGSph",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C90A20,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C90A2C,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C90A38,'size':12,'pad':0,'label':"__vt__16daObj_Maki_HIO_c",'name':"__vt__16daObj_Maki_HIO_c",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C90A48,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C90A50,'size':4,'pad':0,'label':"data_80C90A50",'name':None,'lib':-1,'tu':2,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C90A54,'size':12,'pad':0,'label':"lit_3764",'name':"@3764",'lib':-1,'tu':2,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C90A60,'size':8,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__16daObj_Maki_HIO_cFv":5,
	"daObj_Maki_Draw__FP14obj_maki_class":6,
	"daObj_Maki_Execute__FP14obj_maki_class":7,
	"daObj_Maki_IsDelete__FP14obj_maki_class":8,
	"daObj_Maki_Delete__FP14obj_maki_class":9,
	"useHeapInit__FP10fopAc_ac_c":10,
	"__dt__12J3DFrameCtrlFv":11,
	"daObj_Maki_Create__FP10fopAc_ac_c":12,
	"__dt__8cM3dGSphFv":13,
	"__dt__8cM3dGAabFv":14,
	"__dt__16daObj_Maki_HIO_cFv":15,
	"__sinit_d_a_obj_maki_cpp":16,
	"data_80C90920":17,
	"__destroy_global_chain_reference":18,
	"pad_80C9092C":19,
	"lit_3928":20,
	"lit_3929":21,
	"lit_3930":22,
	"lit_3931":23,
	"lit_3932":24,
	"lit_3933":25,
	"lit_3934":26,
	"lit_3935":27,
	"lit_4075":28,
	"lit_4076":29,
	"lit_4077":30,
	"stringBase0":31,
	"eff_id_3814":32,
	"eff_id_3833":33,
	"cc_sph_src":34,
	"l_daObj_Maki_Method":35,
	"g_profile_OBJ_MAKI":36,
	"__vt__8cM3dGSph":37,
	"__vt__8cM3dGAab":38,
	"__vt__12J3DFrameCtrl":39,
	"__vt__16daObj_Maki_HIO_c":40,
	"__global_destructor_chain":41,
	"data_80C90A50":42,
	"lit_3764":43,
	"l_HIO":44,
}

