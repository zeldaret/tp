#
# Generate By: dol2asm
# Module: 17
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_burnbox",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_burnbox",
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
	{'addr':0x8046E620,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046E64C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046E678,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046E698,'size':60,'pad':0,'label':"initBaseMtx__14daObjBurnBox_cFv",'name':"initBaseMtx__14daObjBurnBox_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046E6D4,'size':100,'pad':0,'label':"setBaseMtx__14daObjBurnBox_cFv",'name':"setBaseMtx__14daObjBurnBox_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046E738,'size':388,'pad':0,'label':"Create__14daObjBurnBox_cFv",'name':"Create__14daObjBurnBox_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046E8BC,'size':128,'pad':0,'label':"CreateHeap__14daObjBurnBox_cFv",'name':"CreateHeap__14daObjBurnBox_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046E93C,'size':176,'pad':0,'label':"create1st__14daObjBurnBox_cFv",'name':"create1st__14daObjBurnBox_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046E9EC,'size':208,'pad':0,'label':"Execute__14daObjBurnBox_cFPPA3_A4_f",'name':"Execute__14daObjBurnBox_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046EABC,'size':340,'pad':0,'label':"Draw__14daObjBurnBox_cFv",'name':"Draw__14daObjBurnBox_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046EC10,'size':64,'pad':0,'label':"Delete__14daObjBurnBox_cFv",'name':"Delete__14daObjBurnBox_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046EC50,'size':244,'pad':0,'label':"daObjBurnBox_create1st__FP14daObjBurnBox_c",'name':"daObjBurnBox_create1st__FP14daObjBurnBox_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046ED44,'size':72,'pad':0,'label':"__dt__8cM3dGCylFv",'name':"__dt__8cM3dGCylFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046ED8C,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046EDD4,'size':32,'pad':0,'label':"daObjBurnBox_MoveBGDelete__FP14daObjBurnBox_c",'name':"daObjBurnBox_MoveBGDelete__FP14daObjBurnBox_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046EDF4,'size':32,'pad':0,'label':"daObjBurnBox_MoveBGExecute__FP14daObjBurnBox_c",'name':"daObjBurnBox_MoveBGExecute__FP14daObjBurnBox_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046EE14,'size':44,'pad':0,'label':"daObjBurnBox_MoveBGDraw__FP14daObjBurnBox_c",'name':"daObjBurnBox_MoveBGDraw__FP14daObjBurnBox_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8046EE40,'size':4,'pad':0,'label':"data_8046EE40",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046EE44,'size':4,'pad':0,'label':"data_8046EE44",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046EE48,'size':12,'pad':0,'label':"l_bmd",'name':"l_bmd",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046EE54,'size':12,'pad':0,'label':"l_heap_size",'name':"l_heap_size",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046EE60,'size':68,'pad':0,'label':"l_cyl_src",'name':"l_cyl_src",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046EEA4,'size':10,'pad':2,'label':"particle_id",'name':"particle_id$3649",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8046EEB0,'size':4,'pad':0,'label':"lit_3684",'name':"@3684",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046EEB4,'size':4,'pad':0,'label':"lit_3685",'name':"@3685",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046EEB8,'size':4,'pad':0,'label':"lit_3686",'name':"@3686",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046EEBC,'size':4,'pad':0,'label':"lit_3687",'name':"@3687",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8046EEC0,'size':20,'pad':0,'label':"struct_8046EEC0",'name':None,'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Structure"},
	{'addr':0x8046EED4,'size':12,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8046EEE0,'size':32,'pad':0,'label':"daObjBurnBox_METHODS",'name':"daObjBurnBox_METHODS",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8046EF00,'size':48,'pad':0,'label':"g_profile_Obj_BurnBox",'name':"g_profile_Obj_BurnBox",'lib':-1,'tu':3,'section':4,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8046EF30,'size':12,'pad':0,'label':"__vt__8cM3dGCyl",'name':"__vt__8cM3dGCyl",'lib':-1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8046EF3C,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8046EF48,'size':40,'pad':0,'label':"__vt__14daObjBurnBox_c",'name':"__vt__14daObjBurnBox_c",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__14daObjBurnBox_cFv":3,
	"setBaseMtx__14daObjBurnBox_cFv":4,
	"Create__14daObjBurnBox_cFv":5,
	"CreateHeap__14daObjBurnBox_cFv":6,
	"create1st__14daObjBurnBox_cFv":7,
	"Execute__14daObjBurnBox_cFPPA3_A4_f":8,
	"Draw__14daObjBurnBox_cFv":9,
	"Delete__14daObjBurnBox_cFv":10,
	"daObjBurnBox_create1st__FP14daObjBurnBox_c":11,
	"__dt__8cM3dGCylFv":12,
	"__dt__8cM3dGAabFv":13,
	"daObjBurnBox_MoveBGDelete__FP14daObjBurnBox_c":14,
	"daObjBurnBox_MoveBGExecute__FP14daObjBurnBox_c":15,
	"daObjBurnBox_MoveBGDraw__FP14daObjBurnBox_c":16,
	"data_8046EE40":17,
	"data_8046EE44":18,
	"l_bmd":19,
	"l_heap_size":20,
	"l_cyl_src":21,
	"particle_id":22,
	"lit_3684":23,
	"lit_3685":24,
	"lit_3686":25,
	"lit_3687":26,
	"struct_8046EEC0":27,
	"l_arcName":28,
	"daObjBurnBox_METHODS":29,
	"g_profile_Obj_BurnBox":30,
	"__vt__8cM3dGCyl":31,
	"__vt__8cM3dGAab":32,
	"__vt__14daObjBurnBox_c":33,
}

