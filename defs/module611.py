#
# Generate By: dol2asm
# Module: 611
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_sakuita",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_sakuita",
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
	{'addr':0x80CC4680,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC46AC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC46D8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC46F8,'size':256,'pad':0,'label':"create_init__14daObjSakuita_cFv",'name':"create_init__14daObjSakuita_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC47F8,'size':32,'pad':0,'label':"initBaseMtx__14daObjSakuita_cFv",'name':"initBaseMtx__14daObjSakuita_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC4818,'size':132,'pad':0,'label':"setBaseMtx__14daObjSakuita_cFv",'name':"setBaseMtx__14daObjSakuita_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC489C,'size':508,'pad':0,'label':"setPlatePos__14daObjSakuita_cFv",'name':"setPlatePos__14daObjSakuita_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC4A98,'size':196,'pad':0,'label':"calcAngle__14daObjSakuita_cFv",'name':"calcAngle__14daObjSakuita_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC4B5C,'size':120,'pad':0,'label':"createSolidHeap__FP10fopAc_ac_c",'name':"createSolidHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC4BD4,'size':64,'pad':0,'label':"daObjSakuita_Draw__FP14daObjSakuita_c",'name':"daObjSakuita_Draw__FP14daObjSakuita_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC4C14,'size':88,'pad':0,'label':"daObjSakuita_Execute__FP14daObjSakuita_c",'name':"daObjSakuita_Execute__FP14daObjSakuita_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC4C6C,'size':8,'pad':0,'label':"daObjSakuita_IsDelete__FP14daObjSakuita_c",'name':"daObjSakuita_IsDelete__FP14daObjSakuita_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80CC4C74,'size':40,'pad':0,'label':"daObjSakuita_Delete__FP14daObjSakuita_c",'name':"daObjSakuita_Delete__FP14daObjSakuita_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC4C9C,'size':420,'pad':0,'label':"__dt__14daObjSakuita_cFv",'name':"__dt__14daObjSakuita_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC4E40,'size':312,'pad':0,'label':"daObjSakuita_Create__FP10fopAc_ac_c",'name':"daObjSakuita_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC4F78,'size':72,'pad':0,'label':"__dt__8cM3dGCylFv",'name':"__dt__8cM3dGCylFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC4FC0,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC5008,'size':92,'pad':0,'label':"__dt__10dCcD_GSttsFv",'name':"__dt__10dCcD_GSttsFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC5064,'size':72,'pad':0,'label':"__dt__10cCcD_GSttsFv",'name':"__dt__10cCcD_GSttsFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC50AC,'size':4,'pad':0,'label':"data_80CC50AC",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CC50B0,'size':4,'pad':0,'label':"data_80CC50B0",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CC50B4,'size':44,'pad':0,'label':"M_attr__14daObjSakuita_c",'name':"M_attr__14daObjSakuita_c",'lib':-1,'tu':3,'section':3,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CC50E0,'size':4,'pad':0,'label':"lit_3658",'name':"@3658",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC50E4,'size':4,'pad':0,'label':"lit_3659",'name':"@3659",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC50E8,'size':4,'pad':0,'label':"lit_3660",'name':"@3660",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC50EC,'size':4,'pad':0,'label':"lit_3661",'name':"@3661",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC50F0,'size':4,'pad':0,'label':"lit_3662",'name':"@3662",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC50F4,'size':4,'pad':0,'label':"lit_3663",'name':"@3663",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC50F8,'size':4,'pad':0,'label':"lit_3704",'name':"@3704",'lib':-1,'tu':3,'section':3,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC50FC,'size':4,'pad':0,'label':"lit_3761",'name':"@3761",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC5100,'size':4,'pad':0,'label':"lit_3762",'name':"@3762",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CC5104,'size':4,'pad':0,'label':"lit_3763",'name':"@3763",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC5108,'size':4,'pad':0,'label':"lit_3764",'name':"@3764",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC510C,'size':8,'pad':0,'label':"lit_3781",'name':"@3781",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CC5114,'size':24,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'r':[4,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80CC512C,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'r':[4,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CC5130,'size':32,'pad':0,'label':"l_daObjSakuita_Method",'name':"l_daObjSakuita_Method",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CC5150,'size':48,'pad':0,'label':"g_profile_Obj_Sakuita",'name':"g_profile_Obj_Sakuita",'lib':-1,'tu':3,'section':4,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CC5180,'size':12,'pad':0,'label':"__vt__10cCcD_GStts",'name':"__vt__10cCcD_GStts",'lib':-1,'tu':3,'section':4,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CC518C,'size':12,'pad':0,'label':"__vt__10dCcD_GStts",'name':"__vt__10dCcD_GStts",'lib':-1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CC5198,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CC51A4,'size':12,'pad':0,'label':"__vt__8cM3dGCyl",'name':"__vt__8cM3dGCyl",'lib':-1,'tu':3,'section':4,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create_init__14daObjSakuita_cFv":3,
	"initBaseMtx__14daObjSakuita_cFv":4,
	"setBaseMtx__14daObjSakuita_cFv":5,
	"setPlatePos__14daObjSakuita_cFv":6,
	"calcAngle__14daObjSakuita_cFv":7,
	"createSolidHeap__FP10fopAc_ac_c":8,
	"daObjSakuita_Draw__FP14daObjSakuita_c":9,
	"daObjSakuita_Execute__FP14daObjSakuita_c":10,
	"daObjSakuita_IsDelete__FP14daObjSakuita_c":11,
	"daObjSakuita_Delete__FP14daObjSakuita_c":12,
	"__dt__14daObjSakuita_cFv":13,
	"daObjSakuita_Create__FP10fopAc_ac_c":14,
	"__dt__8cM3dGCylFv":15,
	"__dt__8cM3dGAabFv":16,
	"__dt__10dCcD_GSttsFv":17,
	"__dt__10cCcD_GSttsFv":18,
	"data_80CC50AC":19,
	"data_80CC50B0":20,
	"M_attr__14daObjSakuita_c":21,
	"lit_3658":22,
	"lit_3659":23,
	"lit_3660":24,
	"lit_3661":25,
	"lit_3662":26,
	"lit_3663":27,
	"lit_3704":28,
	"lit_3761":29,
	"lit_3762":30,
	"lit_3763":31,
	"lit_3764":32,
	"lit_3781":33,
	"stringBase0":34,
	"l_arcName":35,
	"l_daObjSakuita_Method":36,
	"g_profile_Obj_Sakuita":37,
	"__vt__10cCcD_GStts":38,
	"__vt__10dCcD_GStts":39,
	"__vt__8cM3dGAab":40,
	"__vt__8cM3dGCyl":41,
}

