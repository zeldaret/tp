#
# Generate By: dol2asm
# Module: 582
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_ndoor",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_ndoor",
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
	{'addr':0x80CA34C0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA34EC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA3518,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA3538,'size':100,'pad':0,'label':"daObj_Ndoor_Draw__FP15obj_ndoor_class",'name':"daObj_Ndoor_Draw__FP15obj_ndoor_class",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA359C,'size':520,'pad':0,'label':"daObj_Ndoor_Execute__FP15obj_ndoor_class",'name':"daObj_Ndoor_Execute__FP15obj_ndoor_class",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA37A4,'size':8,'pad':0,'label':"daObj_Ndoor_IsDelete__FP15obj_ndoor_class",'name':"daObj_Ndoor_IsDelete__FP15obj_ndoor_class",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80CA37AC,'size':48,'pad':0,'label':"daObj_Ndoor_Delete__FP15obj_ndoor_class",'name':"daObj_Ndoor_Delete__FP15obj_ndoor_class",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA37DC,'size':108,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA3848,'size':356,'pad':0,'label':"daObj_Ndoor_Create__FP10fopAc_ac_c",'name':"daObj_Ndoor_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA39AC,'size':72,'pad':0,'label':"__dt__8cM3dGSphFv",'name':"__dt__8cM3dGSphFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA39F4,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA3A3C,'size':4,'pad':0,'label':"data_80CA3A3C",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CA3A40,'size':4,'pad':0,'label':"data_80CA3A40",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CA3A44,'size':4,'pad':0,'label':"lit_3831",'name':"@3831",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CA3A48,'size':4,'pad':0,'label':"lit_3832",'name':"@3832",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CA3A4C,'size':4,'pad':0,'label':"lit_3833",'name':"@3833",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CA3A50,'size':4,'pad':0,'label':"lit_3834",'name':"@3834",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CA3A54,'size':4,'pad':0,'label':"lit_3835",'name':"@3835",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CA3A58,'size':4,'pad':0,'label':"lit_3836",'name':"@3836",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CA3A5C,'size':4,'pad':4,'label':"lit_3837",'name':"@3837",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CA3A64,'size':8,'pad':0,'label':"lit_3839",'name':"@3839",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CA3A6C,'size':10,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80CA3A78,'size':64,'pad':0,'label':"cc_sph_src",'name':"cc_sph_src$3869",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CA3AB8,'size':32,'pad':0,'label':"l_daObj_Ndoor_Method",'name':"l_daObj_Ndoor_Method",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CA3AD8,'size':48,'pad':0,'label':"g_profile_OBJ_NDOOR",'name':"g_profile_OBJ_NDOOR",'lib':-1,'tu':3,'section':4,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CA3B08,'size':12,'pad':0,'label':"__vt__8cM3dGSph",'name':"__vt__8cM3dGSph",'lib':-1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CA3B14,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daObj_Ndoor_Draw__FP15obj_ndoor_class":3,
	"daObj_Ndoor_Execute__FP15obj_ndoor_class":4,
	"daObj_Ndoor_IsDelete__FP15obj_ndoor_class":5,
	"daObj_Ndoor_Delete__FP15obj_ndoor_class":6,
	"useHeapInit__FP10fopAc_ac_c":7,
	"daObj_Ndoor_Create__FP10fopAc_ac_c":8,
	"__dt__8cM3dGSphFv":9,
	"__dt__8cM3dGAabFv":10,
	"data_80CA3A3C":11,
	"data_80CA3A40":12,
	"lit_3831":13,
	"lit_3832":14,
	"lit_3833":15,
	"lit_3834":16,
	"lit_3835":17,
	"lit_3836":18,
	"lit_3837":19,
	"lit_3839":20,
	"stringBase0":21,
	"cc_sph_src":22,
	"l_daObj_Ndoor_Method":23,
	"g_profile_OBJ_NDOOR":24,
	"__vt__8cM3dGSph":25,
	"__vt__8cM3dGAab":26,
}

