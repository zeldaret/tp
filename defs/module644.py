#
# Generate By: dol2asm
# Module: 644
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_sword",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"unknown_translation_unit_bss",
	"d_a_obj_sword",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".dtors",
	".bss",
	".rodata",
	".data",
]

# Symbols
SYMBOLS = [
	{'addr':0x80CFD4E0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFD50C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFD538,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFD558,'size':60,'pad':0,'label':"initBaseMtx__12daObjSword_cFv",'name':"initBaseMtx__12daObjSword_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFD594,'size':108,'pad':0,'label':"setBaseMtx__12daObjSword_cFv",'name':"setBaseMtx__12daObjSword_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFD600,'size':124,'pad':0,'label':"Create__12daObjSword_cFv",'name':"Create__12daObjSword_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFD67C,'size':460,'pad':0,'label':"create__12daObjSword_cFv",'name':"create__12daObjSword_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFD848,'size':72,'pad':0,'label':"__dt__8cM3dGCylFv",'name':"__dt__8cM3dGCylFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFD890,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFD8D8,'size':92,'pad':0,'label':"__dt__10dCcD_GSttsFv",'name':"__dt__10dCcD_GSttsFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFD934,'size':112,'pad':0,'label':"__dt__12dBgS_AcchCirFv",'name':"__dt__12dBgS_AcchCirFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFD9A4,'size':112,'pad':0,'label':"__dt__12dBgS_ObjAcchFv",'name':"__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDA14,'size':120,'pad':0,'label':"actionWait__12daObjSword_cFv",'name':"actionWait__12daObjSword_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDA8C,'size':120,'pad':0,'label':"initActionOrderGetDemo__12daObjSword_cFv",'name':"initActionOrderGetDemo__12daObjSword_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDB04,'size':124,'pad':0,'label':"actionOrderGetDemo__12daObjSword_cFv",'name':"actionOrderGetDemo__12daObjSword_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDB80,'size':156,'pad':0,'label':"actionGetDemo__12daObjSword_cFv",'name':"actionGetDemo__12daObjSword_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDC1C,'size':252,'pad':0,'label':"execute__12daObjSword_cFv",'name':"execute__12daObjSword_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDD18,'size':84,'pad':0,'label':"draw__12daObjSword_cFv",'name':"draw__12daObjSword_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDD6C,'size':56,'pad':0,'label':"_delete__12daObjSword_cFv",'name':"_delete__12daObjSword_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDDA4,'size':32,'pad':0,'label':"daObjSword_Draw__FP12daObjSword_c",'name':"daObjSword_Draw__FP12daObjSword_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDDC4,'size':32,'pad':0,'label':"daObjSword_Execute__FP12daObjSword_c",'name':"daObjSword_Execute__FP12daObjSword_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDDE4,'size':32,'pad':0,'label':"daObjSword_Delete__FP12daObjSword_c",'name':"daObjSword_Delete__FP12daObjSword_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDE04,'size':32,'pad':0,'label':"daObjSword_Create__FP12daObjSword_c",'name':"daObjSword_Create__FP12daObjSword_c",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDE24,'size':72,'pad':0,'label':"__dt__10cCcD_GSttsFv",'name':"__dt__10cCcD_GSttsFv",'lib':-1,'tu':4,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDE6C,'size':8,'pad':0,'label':"func_80CFDE6C",'name':"@36@__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':4,'section':0,'class_template':None,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDE74,'size':8,'pad':0,'label':"func_80CFDE74",'name':"@20@__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':4,'section':0,'class_template':None,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CFDE7C,'size':4,'pad':0,'label':"data_80CFDE7C",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CFDE80,'size':4,'pad':0,'label':"data_80CFDE80",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CFDE84,'size':16,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':4,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80CFDE94,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CFDEA0,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CFDEB4,'size':24,'pad':0,'label':"l_cull_box",'name':"l_cull_box",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CFDECC,'size':12,'pad':0,'label':"lit_3900",'name':"@3900",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CFDED8,'size':12,'pad':0,'label':"lit_3901",'name':"@3901",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CFDEE4,'size':12,'pad':0,'label':"lit_3902",'name':"@3902",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CFDEF0,'size':36,'pad':0,'label':"data_80CFDEF0",'name':"l_demoFunc$3899",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CFDF14,'size':32,'pad':0,'label':"l_daObjSword_Method",'name':"l_daObjSword_Method",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CFDF34,'size':48,'pad':0,'label':"g_profile_Obj_Sword",'name':"g_profile_Obj_Sword",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CFDF64,'size':12,'pad':0,'label':"__vt__12dBgS_AcchCir",'name':"__vt__12dBgS_AcchCir",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CFDF70,'size':12,'pad':0,'label':"__vt__10cCcD_GStts",'name':"__vt__10cCcD_GStts",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CFDF7C,'size':12,'pad':0,'label':"__vt__10dCcD_GStts",'name':"__vt__10dCcD_GStts",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CFDF88,'size':68,'pad':0,'label':"__vt__12daObjSword_c",'name':"__vt__12daObjSword_c",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CFDFCC,'size':12,'pad':0,'label':"__vt__8cM3dGCyl",'name':"__vt__8cM3dGCyl",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CFDFD8,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CFDFE4,'size':36,'pad':0,'label':"__vt__12dBgS_ObjAcch",'name':"__vt__12dBgS_ObjAcch",'lib':-1,'tu':4,'section':5,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CFE008,'size':4,'pad':0,'label':"data_80CFE008",'name':None,'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__12daObjSword_cFv":3,
	"setBaseMtx__12daObjSword_cFv":4,
	"Create__12daObjSword_cFv":5,
	"create__12daObjSword_cFv":6,
	"__dt__8cM3dGCylFv":7,
	"__dt__8cM3dGAabFv":8,
	"__dt__10dCcD_GSttsFv":9,
	"__dt__12dBgS_AcchCirFv":10,
	"__dt__12dBgS_ObjAcchFv":11,
	"actionWait__12daObjSword_cFv":12,
	"initActionOrderGetDemo__12daObjSword_cFv":13,
	"actionOrderGetDemo__12daObjSword_cFv":14,
	"actionGetDemo__12daObjSword_cFv":15,
	"execute__12daObjSword_cFv":16,
	"draw__12daObjSword_cFv":17,
	"_delete__12daObjSword_cFv":18,
	"daObjSword_Draw__FP12daObjSword_c":19,
	"daObjSword_Execute__FP12daObjSword_c":20,
	"daObjSword_Delete__FP12daObjSword_c":21,
	"daObjSword_Create__FP12daObjSword_c":22,
	"__dt__10cCcD_GSttsFv":23,
	"func_80CFDE6C":24,
	"func_80CFDE74":25,
	"data_80CFDE7C":26,
	"data_80CFDE80":27,
	"stringBase0":28,
	"cNullVec__6Z2Calc":29,
	"lit_1787":30,
	"l_cull_box":31,
	"lit_3900":32,
	"lit_3901":33,
	"lit_3902":34,
	"data_80CFDEF0":35,
	"l_daObjSword_Method":36,
	"g_profile_Obj_Sword":37,
	"__vt__12dBgS_AcchCir":38,
	"__vt__10cCcD_GStts":39,
	"__vt__10dCcD_GStts":40,
	"__vt__12daObjSword_c":41,
	"__vt__8cM3dGCyl":42,
	"__vt__8cM3dGAab":43,
	"__vt__12dBgS_ObjAcch":44,
	"data_80CFE008":45,
}

