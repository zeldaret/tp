#
# Generate By: dol2asm
# Module: 106
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_metalbox",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_metalbox",
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
	{'addr':0x80592E20,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80592E4C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80592E78,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80592E98,'size':60,'pad':0,'label':"initBaseMtx__11daObjMBox_cFv",'name':"initBaseMtx__11daObjMBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80592ED4,'size':116,'pad':0,'label':"setBaseMtx__11daObjMBox_cFv",'name':"setBaseMtx__11daObjMBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80592F48,'size':140,'pad':0,'label':"Create__11daObjMBox_cFv",'name':"Create__11daObjMBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80592FD4,'size':112,'pad':0,'label':"CreateHeap__11daObjMBox_cFv",'name':"CreateHeap__11daObjMBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593044,'size':384,'pad':0,'label':"create__11daObjMBox_cFv",'name':"create__11daObjMBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805931C4,'size':72,'pad':0,'label':"__dt__8cM3dGCylFv",'name':"__dt__8cM3dGCylFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059320C,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593254,'size':112,'pad':0,'label':"__dt__12dBgS_ObjAcchFv",'name':"__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805932C4,'size':44,'pad':0,'label':"Execute__11daObjMBox_cFPPA3_A4_f",'name':"Execute__11daObjMBox_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805932F0,'size':164,'pad':0,'label':"Draw__11daObjMBox_cFv",'name':"Draw__11daObjMBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593394,'size':52,'pad':0,'label':"Delete__11daObjMBox_cFv",'name':"Delete__11daObjMBox_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805933C8,'size':44,'pad':0,'label':"daObjMBox_Draw__FP11daObjMBox_c",'name':"daObjMBox_Draw__FP11daObjMBox_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805933F4,'size':32,'pad':0,'label':"daObjMBox_Execute__FP11daObjMBox_c",'name':"daObjMBox_Execute__FP11daObjMBox_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593414,'size':32,'pad':0,'label':"daObjMBox_Delete__FP11daObjMBox_c",'name':"daObjMBox_Delete__FP11daObjMBox_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593434,'size':32,'pad':0,'label':"daObjMBox_Create__FP10fopAc_ac_c",'name':"daObjMBox_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593454,'size':8,'pad':0,'label':"func_80593454",'name':"@36@__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':3,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059345C,'size':8,'pad':0,'label':"func_8059345C",'name':"@20@__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':3,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80593464,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80593468,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8059346C,'size':4,'pad':0,'label':"lit_3655",'name':"@3655",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80593470,'size':10,'pad':0,'label':"d_a_obj_metalbox__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x8059347C,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80593480,'size':32,'pad':0,'label':"l_daObjMBox_Method",'name':"l_daObjMBox_Method",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805934A0,'size':48,'pad':0,'label':"g_profile_Obj_MetalBox",'name':"g_profile_Obj_MetalBox",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805934D0,'size':12,'pad':0,'label':"__vt__8cM3dGCyl",'name':"__vt__8cM3dGCyl",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x805934DC,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x805934E8,'size':36,'pad':0,'label':"__vt__12dBgS_ObjAcch",'name':"__vt__12dBgS_ObjAcch",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x8059350C,'size':40,'pad':0,'label':"__vt__11daObjMBox_c",'name':"__vt__11daObjMBox_c",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__11daObjMBox_cFv":3,
	"setBaseMtx__11daObjMBox_cFv":4,
	"Create__11daObjMBox_cFv":5,
	"CreateHeap__11daObjMBox_cFv":6,
	"create__11daObjMBox_cFv":7,
	"__dt__8cM3dGCylFv":8,
	"__dt__8cM3dGAabFv":9,
	"__dt__12dBgS_ObjAcchFv":10,
	"Execute__11daObjMBox_cFPPA3_A4_f":11,
	"Draw__11daObjMBox_cFv":12,
	"Delete__11daObjMBox_cFv":13,
	"daObjMBox_Draw__FP11daObjMBox_c":14,
	"daObjMBox_Execute__FP11daObjMBox_c":15,
	"daObjMBox_Delete__FP11daObjMBox_c":16,
	"daObjMBox_Create__FP10fopAc_ac_c":17,
	"func_80593454":18,
	"func_8059345C":19,
	"_ctors":20,
	"_dtors":21,
	"lit_3655":22,
	"d_a_obj_metalbox__stringBase0":23,
	"l_arcName":24,
	"l_daObjMBox_Method":25,
	"g_profile_Obj_MetalBox":26,
	"__vt__8cM3dGCyl":27,
	"__vt__8cM3dGAab":28,
	"__vt__12dBgS_ObjAcch":29,
	"__vt__11daObjMBox_c":30,
}

