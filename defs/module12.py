#
# Generate By: dol2asm
# Module: 12
#

# Libraries
LIBRARIES = [
	"d/a/d_a_hitobj",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_hitobj",
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
	{'addr':0x8046B2E0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046B30C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046B338,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046B358,'size':8,'pad':0,'label':"daHitobj_Draw__FP12hitobj_class",'name':"daHitobj_Draw__FP12hitobj_class",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8046B360,'size':104,'pad':0,'label':"daHitobj_Execute__FP12hitobj_class",'name':"daHitobj_Execute__FP12hitobj_class",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046B3C8,'size':8,'pad':0,'label':"daHitobj_IsDelete__FP12hitobj_class",'name':"daHitobj_IsDelete__FP12hitobj_class",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8046B3D0,'size':48,'pad':0,'label':"daHitobj_Delete__FP12hitobj_class",'name':"daHitobj_Delete__FP12hitobj_class",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046B400,'size':316,'pad':0,'label':"daHitobj_Create__FP10fopAc_ac_c",'name':"daHitobj_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046B53C,'size':72,'pad':0,'label':"__dt__8cM3dGSphFv",'name':"__dt__8cM3dGSphFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046B584,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046B5CC,'size':4,'pad':0,'label':"data_8046B5CC",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046B5D0,'size':4,'pad':0,'label':"data_8046B5D0",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046B5D4,'size':7,'pad':1,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x8046B5DC,'size':64,'pad':0,'label':"cc_sph_src",'name':"cc_sph_src$3657",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046B61C,'size':32,'pad':0,'label':"l_daHitobj_Method",'name':"l_daHitobj_Method",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8046B63C,'size':48,'pad':0,'label':"g_profile_HITOBJ",'name':"g_profile_HITOBJ",'lib':-1,'tu':3,'section':4,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8046B66C,'size':12,'pad':0,'label':"__vt__8cM3dGSph",'name':"__vt__8cM3dGSph",'lib':-1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8046B678,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daHitobj_Draw__FP12hitobj_class":3,
	"daHitobj_Execute__FP12hitobj_class":4,
	"daHitobj_IsDelete__FP12hitobj_class":5,
	"daHitobj_Delete__FP12hitobj_class":6,
	"daHitobj_Create__FP10fopAc_ac_c":7,
	"__dt__8cM3dGSphFv":8,
	"__dt__8cM3dGAabFv":9,
	"data_8046B5CC":10,
	"data_8046B5D0":11,
	"stringBase0":12,
	"cc_sph_src":13,
	"l_daHitobj_Method":14,
	"g_profile_HITOBJ":15,
	"__vt__8cM3dGSph":16,
	"__vt__8cM3dGAab":17,
}

