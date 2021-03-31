#
# Generate By: dol2asm
# Module: 404
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_bbox",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_bbox",
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
	{'addr':0x80BACCC0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BACCEC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BACD18,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BACD38,'size':60,'pad':0,'label':"initBaseMtx__11daObjBBox_cFv",'name':"initBaseMtx__11daObjBBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BACD74,'size':100,'pad':0,'label':"setBaseMtx__11daObjBBox_cFv",'name':"setBaseMtx__11daObjBBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BACDD8,'size':120,'pad':0,'label':"Create__11daObjBBox_cFv",'name':"Create__11daObjBBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BACE50,'size':112,'pad':0,'label':"CreateHeap__11daObjBBox_cFv",'name':"CreateHeap__11daObjBBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BACEC0,'size':368,'pad':0,'label':"create1st__11daObjBBox_cFv",'name':"create1st__11daObjBBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BAD030,'size':72,'pad':0,'label':"__dt__8cM3dGCylFv",'name':"__dt__8cM3dGCylFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BAD078,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BAD0C0,'size':372,'pad':0,'label':"Execute__11daObjBBox_cFPPA3_A4_f",'name':"Execute__11daObjBBox_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BAD234,'size':164,'pad':0,'label':"Draw__11daObjBBox_cFv",'name':"Draw__11daObjBBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BAD2D8,'size':52,'pad':0,'label':"Delete__11daObjBBox_cFv",'name':"Delete__11daObjBBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BAD30C,'size':244,'pad':0,'label':"daObjBBox_create1st__FP11daObjBBox_c",'name':"daObjBBox_create1st__FP11daObjBBox_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BAD400,'size':32,'pad':0,'label':"daObjBBox_MoveBGDelete__FP11daObjBBox_c",'name':"daObjBBox_MoveBGDelete__FP11daObjBBox_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BAD420,'size':32,'pad':0,'label':"daObjBBox_MoveBGExecute__FP11daObjBBox_c",'name':"daObjBBox_MoveBGExecute__FP11daObjBBox_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BAD440,'size':44,'pad':0,'label':"daObjBBox_MoveBGDraw__FP11daObjBBox_c",'name':"daObjBBox_MoveBGDraw__FP11daObjBBox_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BAD46C,'size':4,'pad':0,'label':"data_80BAD46C",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BAD470,'size':4,'pad':0,'label':"data_80BAD470",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BAD474,'size':68,'pad':0,'label':"l_cyl_src",'name':"l_cyl_src",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BAD4B8,'size':10,'pad':2,'label':"data_80BAD4B8",'name':"particle_id$3793",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BAD4C4,'size':4,'pad':0,'label':"lit_3821",'name':"@3821",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BAD4C8,'size':4,'pad':0,'label':"lit_3822",'name':"@3822",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BAD4CC,'size':7,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80BAD4D4,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BAD4D8,'size':32,'pad':0,'label':"daObjBBox_METHODS",'name':"daObjBBox_METHODS",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BAD4F8,'size':48,'pad':0,'label':"g_profile_Obj_BBox",'name':"g_profile_Obj_BBox",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BAD528,'size':12,'pad':0,'label':"__vt__8cM3dGCyl",'name':"__vt__8cM3dGCyl",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80BAD534,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80BAD540,'size':40,'pad':0,'label':"__vt__11daObjBBox_c",'name':"__vt__11daObjBBox_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__11daObjBBox_cFv":3,
	"setBaseMtx__11daObjBBox_cFv":4,
	"Create__11daObjBBox_cFv":5,
	"CreateHeap__11daObjBBox_cFv":6,
	"create1st__11daObjBBox_cFv":7,
	"__dt__8cM3dGCylFv":8,
	"__dt__8cM3dGAabFv":9,
	"Execute__11daObjBBox_cFPPA3_A4_f":10,
	"Draw__11daObjBBox_cFv":11,
	"Delete__11daObjBBox_cFv":12,
	"daObjBBox_create1st__FP11daObjBBox_c":13,
	"daObjBBox_MoveBGDelete__FP11daObjBBox_c":14,
	"daObjBBox_MoveBGExecute__FP11daObjBBox_c":15,
	"daObjBBox_MoveBGDraw__FP11daObjBBox_c":16,
	"data_80BAD46C":17,
	"data_80BAD470":18,
	"l_cyl_src":19,
	"data_80BAD4B8":20,
	"lit_3821":21,
	"lit_3822":22,
	"stringBase0":23,
	"l_arcName":24,
	"daObjBBox_METHODS":25,
	"g_profile_Obj_BBox":26,
	"__vt__8cM3dGCyl":27,
	"__vt__8cM3dGAab":28,
	"__vt__11daObjBBox_c":29,
}

