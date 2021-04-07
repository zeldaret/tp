#
# Generate By: dol2asm
# Module: 108
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_nameplate",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_nameplate",
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
	{'addr':0x80594020,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059404C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594078,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594098,'size':196,'pad':0,'label':"create_init__16daObjNameplate_cFv",'name':"create_init__16daObjNameplate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059415C,'size':32,'pad':0,'label':"initBaseMtx__16daObjNameplate_cFv",'name':"initBaseMtx__16daObjNameplate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059417C,'size':204,'pad':0,'label':"setBaseMtx__16daObjNameplate_cFv",'name':"setBaseMtx__16daObjNameplate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594248,'size':112,'pad':0,'label':"initCcSphere__16daObjNameplate_cFv",'name':"initCcSphere__16daObjNameplate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805942B8,'size':148,'pad':0,'label':"setCcSphere__16daObjNameplate_cFv",'name':"setCcSphere__16daObjNameplate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059434C,'size':640,'pad':0,'label':"calcAngle__16daObjNameplate_cFv",'name':"calcAngle__16daObjNameplate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805945CC,'size':392,'pad':0,'label':"calcSpring__16daObjNameplate_cFv",'name':"calcSpring__16daObjNameplate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594754,'size':164,'pad':0,'label':"checkHitAngle__16daObjNameplate_cFv",'name':"checkHitAngle__16daObjNameplate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805947F8,'size':344,'pad':0,'label':"messageProc__16daObjNameplate_cFv",'name':"messageProc__16daObjNameplate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594950,'size':120,'pad':0,'label':"createSolidHeap__FP10fopAc_ac_c",'name':"createSolidHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805949C8,'size':164,'pad':0,'label':"daObjNameplate_Draw__FP16daObjNameplate_c",'name':"daObjNameplate_Draw__FP16daObjNameplate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594A6C,'size':72,'pad':0,'label':"daObjNameplate_Execute__FP16daObjNameplate_c",'name':"daObjNameplate_Execute__FP16daObjNameplate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594AB4,'size':8,'pad':0,'label':"daObjNameplate_IsDelete__FP16daObjNameplate_c",'name':"daObjNameplate_IsDelete__FP16daObjNameplate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80594ABC,'size':316,'pad':0,'label':"daObjNameplate_Delete__FP16daObjNameplate_c",'name':"daObjNameplate_Delete__FP16daObjNameplate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594BF8,'size':320,'pad':0,'label':"daObjNameplate_Create__FP10fopAc_ac_c",'name':"daObjNameplate_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594D38,'size':72,'pad':0,'label':"__dt__8cM3dGSphFv",'name':"__dt__8cM3dGSphFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594D80,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594DC8,'size':92,'pad':0,'label':"__dt__10dCcD_GSttsFv",'name':"__dt__10dCcD_GSttsFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594E24,'size':72,'pad':0,'label':"__dt__10cCcD_GSttsFv",'name':"__dt__10cCcD_GSttsFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80594E6C,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80594E70,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80594E74,'size':32,'pad':0,'label':"M_attr__16daObjNameplate_c",'name':"M_attr__16daObjNameplate_c",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[5,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80594E94,'size':4,'pad':0,'label':"lit_3659",'name':"@3659",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80594E98,'size':4,'pad':0,'label':"lit_3660",'name':"@3660",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80594E9C,'size':4,'pad':0,'label':"lit_3661",'name':"@3661",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80594EA0,'size':4,'pad':0,'label':"lit_3662",'name':"@3662",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80594EA4,'size':4,'pad':0,'label':"lit_3663",'name':"@3663",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80594EA8,'size':4,'pad':0,'label':"lit_3664",'name':"@3664",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80594EAC,'size':4,'pad':0,'label':"lit_3665",'name':"@3665",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80594EB0,'size':4,'pad':0,'label':"lit_3666",'name':"@3666",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80594EB4,'size':64,'pad':0,'label':"ccSphSrc",'name':"ccSphSrc$3700",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80594EF4,'size':4,'pad':0,'label':"lit_3718",'name':"@3718",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80594EF8,'size':4,'pad':0,'label':"lit_3719",'name':"@3719",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80594EFC,'size':4,'pad':4,'label':"lit_3769",'name':"@3769",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80594F04,'size':8,'pad':0,'label':"lit_3791",'name':"@3791",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80594F0C,'size':25,'pad':0,'label':"d_a_obj_nameplate__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80594F28,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80594F2C,'size':32,'pad':0,'label':"l_daObjNameplate_Method",'name':"l_daObjNameplate_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80594F4C,'size':48,'pad':0,'label':"g_profile_Obj_NamePlate",'name':"g_profile_Obj_NamePlate",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80594F7C,'size':12,'pad':0,'label':"__vt__10cCcD_GStts",'name':"__vt__10cCcD_GStts",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80594F88,'size':12,'pad':0,'label':"__vt__10dCcD_GStts",'name':"__vt__10dCcD_GStts",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80594F94,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80594FA0,'size':12,'pad':0,'label':"__vt__8cM3dGSph",'name':"__vt__8cM3dGSph",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create_init__16daObjNameplate_cFv":3,
	"initBaseMtx__16daObjNameplate_cFv":4,
	"setBaseMtx__16daObjNameplate_cFv":5,
	"initCcSphere__16daObjNameplate_cFv":6,
	"setCcSphere__16daObjNameplate_cFv":7,
	"calcAngle__16daObjNameplate_cFv":8,
	"calcSpring__16daObjNameplate_cFv":9,
	"checkHitAngle__16daObjNameplate_cFv":10,
	"messageProc__16daObjNameplate_cFv":11,
	"createSolidHeap__FP10fopAc_ac_c":12,
	"daObjNameplate_Draw__FP16daObjNameplate_c":13,
	"daObjNameplate_Execute__FP16daObjNameplate_c":14,
	"daObjNameplate_IsDelete__FP16daObjNameplate_c":15,
	"daObjNameplate_Delete__FP16daObjNameplate_c":16,
	"daObjNameplate_Create__FP10fopAc_ac_c":17,
	"__dt__8cM3dGSphFv":18,
	"__dt__8cM3dGAabFv":19,
	"__dt__10dCcD_GSttsFv":20,
	"__dt__10cCcD_GSttsFv":21,
	"_ctors":22,
	"_dtors":23,
	"M_attr__16daObjNameplate_c":24,
	"lit_3659":25,
	"lit_3660":26,
	"lit_3661":27,
	"lit_3662":28,
	"lit_3663":29,
	"lit_3664":30,
	"lit_3665":31,
	"lit_3666":32,
	"ccSphSrc":33,
	"lit_3718":34,
	"lit_3719":35,
	"lit_3769":36,
	"lit_3791":37,
	"d_a_obj_nameplate__stringBase0":38,
	"l_arcName":39,
	"l_daObjNameplate_Method":40,
	"g_profile_Obj_NamePlate":41,
	"__vt__10cCcD_GStts":42,
	"__vt__10dCcD_GStts":43,
	"__vt__8cM3dGAab":44,
	"__vt__8cM3dGSph":45,
}

