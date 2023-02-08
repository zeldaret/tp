#
# Generate By: dol2asm
# Module: 505
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_knBullet",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_knBullet",
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
	{'addr':0x80C470A0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C470CC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C470F8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C47118,'size':344,'pad':0,'label':"Create__15daObjKnBullet_cFv",'name':"Create__15daObjKnBullet_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C47270,'size':72,'pad':0,'label':"__dt__8cM3dGSphFv",'name':"__dt__8cM3dGSphFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C472B8,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C47300,'size':384,'pad':0,'label':"Execute__15daObjKnBullet_cFv",'name':"Execute__15daObjKnBullet_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C47480,'size':8,'pad':0,'label':"Draw__15daObjKnBullet_cFv",'name':"Draw__15daObjKnBullet_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C47488,'size':8,'pad':0,'label':"Delete__15daObjKnBullet_cFv",'name':"Delete__15daObjKnBullet_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C47490,'size':88,'pad':0,'label':"setBaseMtx__15daObjKnBullet_cFv",'name':"setBaseMtx__15daObjKnBullet_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C474E8,'size':112,'pad':0,'label':"col_init__15daObjKnBullet_cFv",'name':"col_init__15daObjKnBullet_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C47558,'size':604,'pad':0,'label':"col_chk__15daObjKnBullet_cFv",'name':"col_chk__15daObjKnBullet_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C477B4,'size':240,'pad':0,'label':"hitPrtclSet__15daObjKnBullet_cFv",'name':"hitPrtclSet__15daObjKnBullet_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C478A4,'size':32,'pad':0,'label':"daObjKnBullet_Execute__FP15daObjKnBullet_c",'name':"daObjKnBullet_Execute__FP15daObjKnBullet_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C478C4,'size':32,'pad':0,'label':"daObjKnBullet_Draw__FP15daObjKnBullet_c",'name':"daObjKnBullet_Draw__FP15daObjKnBullet_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C478E4,'size':8,'pad':0,'label':"daObjKnBullet_IsDelete__FP15daObjKnBullet_c",'name':"daObjKnBullet_IsDelete__FP15daObjKnBullet_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C478EC,'size':32,'pad':0,'label':"daObjKnBullet_Delete__FP15daObjKnBullet_c",'name':"daObjKnBullet_Delete__FP15daObjKnBullet_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4790C,'size':32,'pad':0,'label':"daObjKnBullet_create__FP10fopAc_ac_c",'name':"daObjKnBullet_create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C4792C,'size':28,'pad':0,'label':"func_80C4792C",'name':"cLib_calcTimer<s>__FPs",'lib':-1,'tu':3,'section':0,'class_template':True,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C47948,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80C4794C,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80C47950,'size':12,'pad':0,'label':"l_DATA",'name':"l_DATA",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C4795C,'size':64,'pad':0,'label':"l_sph_src",'name':"l_sph_src",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C4799C,'size':4,'pad':0,'label':"lit_3907",'name':"@3907",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C479A0,'size':4,'pad':0,'label':"lit_3908",'name':"@3908",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C479A4,'size':4,'pad':0,'label':"lit_3909",'name':"@3909",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C479A8,'size':4,'pad':0,'label':"lit_3910",'name':"@3910",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C479AC,'size':6,'pad':2,'label':"l_prticles_id_3986",'name':"l_prticles_id$3986",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C479B4,'size':4,'pad':0,'label':"lit_4021",'name':"@4021",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C479B8,'size':4,'pad':0,'label':"lit_4022",'name':"@4022",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C479BC,'size':4,'pad':0,'label':"lit_4129",'name':"@4129",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C479C0,'size':4,'pad':0,'label':"lit_4130",'name':"@4130",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C479C4,'size':6,'pad':0,'label':"l_prticles_id_4141",'name':"l_prticles_id$4141",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C479CC,'size':32,'pad':0,'label':"l_daObjKnBullet_Method",'name':"l_daObjKnBullet_Method",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C479EC,'size':48,'pad':0,'label':"g_profile_KN_BULLET",'name':"g_profile_KN_BULLET",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C47A1C,'size':12,'pad':0,'label':"__vt__8cM3dGSph",'name':"__vt__8cM3dGSph",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C47A28,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"Create__15daObjKnBullet_cFv":3,
	"__dt__8cM3dGSphFv":4,
	"__dt__8cM3dGAabFv":5,
	"Execute__15daObjKnBullet_cFv":6,
	"Draw__15daObjKnBullet_cFv":7,
	"Delete__15daObjKnBullet_cFv":8,
	"setBaseMtx__15daObjKnBullet_cFv":9,
	"col_init__15daObjKnBullet_cFv":10,
	"col_chk__15daObjKnBullet_cFv":11,
	"hitPrtclSet__15daObjKnBullet_cFv":12,
	"daObjKnBullet_Execute__FP15daObjKnBullet_c":13,
	"daObjKnBullet_Draw__FP15daObjKnBullet_c":14,
	"daObjKnBullet_IsDelete__FP15daObjKnBullet_c":15,
	"daObjKnBullet_Delete__FP15daObjKnBullet_c":16,
	"daObjKnBullet_create__FP10fopAc_ac_c":17,
	"func_80C4792C":18,
	"_ctors":19,
	"_dtors":20,
	"l_DATA":21,
	"l_sph_src":22,
	"lit_3907":23,
	"lit_3908":24,
	"lit_3909":25,
	"lit_3910":26,
	"l_prticles_id_3986":27,
	"lit_4021":28,
	"lit_4022":29,
	"lit_4129":30,
	"lit_4130":31,
	"l_prticles_id_4141":32,
	"l_daObjKnBullet_Method":33,
	"g_profile_KN_BULLET":34,
	"__vt__8cM3dGSph":35,
	"__vt__8cM3dGAab":36,
}

