#
# Generate By: dol2asm
# Module: 496
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_kazeneko",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_kazeneko",
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
	{'addr':0x80C3C860,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3C88C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3C8B8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3C8D8,'size':144,'pad':0,'label':"create_init__15daObjKazeNeko_cFv",'name':"create_init__15daObjKazeNeko_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3C968,'size':32,'pad':0,'label':"initBaseMtx__15daObjKazeNeko_cFv",'name':"initBaseMtx__15daObjKazeNeko_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3C988,'size':260,'pad':0,'label':"setBaseMtx__15daObjKazeNeko_cFv",'name':"setBaseMtx__15daObjKazeNeko_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3CA8C,'size':132,'pad':0,'label':"initCcCylinder__15daObjKazeNeko_cFv",'name':"initCcCylinder__15daObjKazeNeko_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3CB10,'size':108,'pad':0,'label':"setCcCylinder__15daObjKazeNeko_cFv",'name':"setCcCylinder__15daObjKazeNeko_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3CB7C,'size':196,'pad':0,'label':"swingHead__15daObjKazeNeko_cFv",'name':"swingHead__15daObjKazeNeko_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3CC40,'size':80,'pad':0,'label':"getFirstVec__15daObjKazeNeko_cFP4cXyzi",'name':"getFirstVec__15daObjKazeNeko_cFP4cXyzi",'lib':-1,'tu':3,'section':0,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3CC90,'size':256,'pad':0,'label':"createSolidHeap__FP10fopAc_ac_c",'name':"createSolidHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3CD90,'size':280,'pad':0,'label':"daObjKazeNeko_Draw__FP15daObjKazeNeko_c",'name':"daObjKazeNeko_Draw__FP15daObjKazeNeko_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3CEA8,'size':392,'pad':0,'label':"daObjKazeNeko_Execute__FP15daObjKazeNeko_c",'name':"daObjKazeNeko_Execute__FP15daObjKazeNeko_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3D030,'size':8,'pad':0,'label':"daObjKazeNeko_IsDelete__FP15daObjKazeNeko_c",'name':"daObjKazeNeko_IsDelete__FP15daObjKazeNeko_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C3D038,'size':304,'pad':0,'label':"daObjKazeNeko_Delete__FP15daObjKazeNeko_c",'name':"daObjKazeNeko_Delete__FP15daObjKazeNeko_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3D168,'size':312,'pad':0,'label':"daObjKazeNeko_Create__FP10fopAc_ac_c",'name':"daObjKazeNeko_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3D2A0,'size':72,'pad':0,'label':"__dt__8cM3dGCylFv",'name':"__dt__8cM3dGCylFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3D2E8,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3D330,'size':92,'pad':0,'label':"__dt__10dCcD_GSttsFv",'name':"__dt__10dCcD_GSttsFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3D38C,'size':72,'pad':0,'label':"__dt__10cCcD_GSttsFv",'name':"__dt__10cCcD_GSttsFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C3D3D4,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80C3D3D8,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80C3D3DC,'size':44,'pad':0,'label':"M_attr__15daObjKazeNeko_c",'name':"M_attr__15daObjKazeNeko_c",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[7,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C3D408,'size':4,'pad':0,'label':"lit_3853",'name':"@3853",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C3D40C,'size':4,'pad':0,'label':"lit_3854",'name':"@3854",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C3D410,'size':4,'pad':0,'label':"lit_3855",'name':"@3855",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C3D414,'size':4,'pad':0,'label':"lit_3856",'name':"@3856",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C3D418,'size':4,'pad':0,'label':"lit_3890",'name':"@3890",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C3D41C,'size':68,'pad':0,'label':"ccCylSrc",'name':"ccCylSrc$3894",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C3D460,'size':4,'pad':0,'label':"lit_3947",'name':"@3947",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C3D464,'size':4,'pad':0,'label':"lit_3948",'name':"@3948",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C3D468,'size':4,'pad':0,'label':"lit_3962",'name':"@3962",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C3D46C,'size':8,'pad':0,'label':"lit_4119",'name':"@4119",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C3D474,'size':26,'pad':0,'label':"d_a_obj_kazeneko__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80C3D490,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C3D494,'size':32,'pad':0,'label':"l_daObjKazeNeko_Method",'name':"l_daObjKazeNeko_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C3D4B4,'size':48,'pad':0,'label':"g_profile_Obj_KazeNeko",'name':"g_profile_Obj_KazeNeko",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C3D4E4,'size':12,'pad':0,'label':"__vt__10cCcD_GStts",'name':"__vt__10cCcD_GStts",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C3D4F0,'size':12,'pad':0,'label':"__vt__10dCcD_GStts",'name':"__vt__10dCcD_GStts",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C3D4FC,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C3D508,'size':12,'pad':0,'label':"__vt__8cM3dGCyl",'name':"__vt__8cM3dGCyl",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create_init__15daObjKazeNeko_cFv":3,
	"initBaseMtx__15daObjKazeNeko_cFv":4,
	"setBaseMtx__15daObjKazeNeko_cFv":5,
	"initCcCylinder__15daObjKazeNeko_cFv":6,
	"setCcCylinder__15daObjKazeNeko_cFv":7,
	"swingHead__15daObjKazeNeko_cFv":8,
	"getFirstVec__15daObjKazeNeko_cFP4cXyzi":9,
	"createSolidHeap__FP10fopAc_ac_c":10,
	"daObjKazeNeko_Draw__FP15daObjKazeNeko_c":11,
	"daObjKazeNeko_Execute__FP15daObjKazeNeko_c":12,
	"daObjKazeNeko_IsDelete__FP15daObjKazeNeko_c":13,
	"daObjKazeNeko_Delete__FP15daObjKazeNeko_c":14,
	"daObjKazeNeko_Create__FP10fopAc_ac_c":15,
	"__dt__8cM3dGCylFv":16,
	"__dt__8cM3dGAabFv":17,
	"__dt__10dCcD_GSttsFv":18,
	"__dt__10cCcD_GSttsFv":19,
	"_ctors":20,
	"_dtors":21,
	"M_attr__15daObjKazeNeko_c":22,
	"lit_3853":23,
	"lit_3854":24,
	"lit_3855":25,
	"lit_3856":26,
	"lit_3890":27,
	"ccCylSrc":28,
	"lit_3947":29,
	"lit_3948":30,
	"lit_3962":31,
	"lit_4119":32,
	"d_a_obj_kazeneko__stringBase0":33,
	"l_arcName":34,
	"l_daObjKazeNeko_Method":35,
	"g_profile_Obj_KazeNeko":36,
	"__vt__10cCcD_GStts":37,
	"__vt__10dCcD_GStts":38,
	"__vt__8cM3dGAab":39,
	"__vt__8cM3dGCyl":40,
}

