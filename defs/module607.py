#
# Generate By: dol2asm
# Module: 607
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_roten",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_roten",
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
	{'addr':0x80CC0AE0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC0B0C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC0B38,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC0B58,'size':60,'pad':0,'label':"initBaseMtx__13daObj_Roten_cFv",'name':"initBaseMtx__13daObj_Roten_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC0B94,'size':140,'pad':0,'label':"setBaseMtx__13daObj_Roten_cFv",'name':"setBaseMtx__13daObj_Roten_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC0C20,'size':676,'pad':0,'label':"Create__13daObj_Roten_cFv",'name':"Create__13daObj_Roten_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC0EC4,'size':124,'pad':0,'label':"CreateHeap__13daObj_Roten_cFv",'name':"CreateHeap__13daObj_Roten_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC0F40,'size':248,'pad':0,'label':"create__13daObj_Roten_cFv",'name':"create__13daObj_Roten_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC1038,'size':256,'pad':0,'label':"Execute__13daObj_Roten_cFPPA3_A4_f",'name':"Execute__13daObj_Roten_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC1138,'size':284,'pad':0,'label':"Draw__13daObj_Roten_cFv",'name':"Draw__13daObj_Roten_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC1254,'size':144,'pad':0,'label':"Delete__13daObj_Roten_cFv",'name':"Delete__13daObj_Roten_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC12E4,'size':16,'pad':0,'label':"getResName__13daObj_Roten_cFv",'name':"getResName__13daObj_Roten_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC12F4,'size':32,'pad':0,'label':"daObj_Roten_Create__FPv",'name':"daObj_Roten_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC1314,'size':32,'pad':0,'label':"daObj_Roten_Delete__FPv",'name':"daObj_Roten_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC1334,'size':32,'pad':0,'label':"daObj_Roten_Execute__FPv",'name':"daObj_Roten_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC1354,'size':44,'pad':0,'label':"daObj_Roten_Draw__FPv",'name':"daObj_Roten_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC1380,'size':8,'pad':0,'label':"daObj_Roten_IsDelete__FPv",'name':"daObj_Roten_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80CC1388,'size':112,'pad':0,'label':"__dt__13daObj_Roten_cFv",'name':"__dt__13daObj_Roten_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CC13F8,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CC13FC,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CC1400,'size':4,'pad':0,'label':"lit_3778",'name':"@3778",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1404,'size':4,'pad':0,'label':"lit_3779",'name':"@3779",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1408,'size':4,'pad':0,'label':"lit_3780",'name':"@3780",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC140C,'size':4,'pad':0,'label':"lit_3781",'name':"@3781",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CC1410,'size':4,'pad':0,'label':"lit_3782",'name':"@3782",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1414,'size':4,'pad':0,'label':"lit_3783",'name':"@3783",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1418,'size':4,'pad':0,'label':"lit_3784",'name':"@3784",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC141C,'size':4,'pad':0,'label':"lit_3785",'name':"@3785",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1420,'size':4,'pad':0,'label':"lit_3786",'name':"@3786",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1424,'size':4,'pad':0,'label':"lit_3787",'name':"@3787",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1428,'size':4,'pad':0,'label':"lit_3844",'name':"@3844",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC142C,'size':4,'pad':0,'label':"lit_3853",'name':"@3853",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1430,'size':4,'pad':0,'label':"lit_3878",'name':"@3878",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1434,'size':4,'pad':0,'label':"lit_3879",'name':"@3879",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1438,'size':4,'pad':0,'label':"lit_3880",'name':"@3880",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC143C,'size':4,'pad':0,'label':"lit_3881",'name':"@3881",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1440,'size':10,'pad':0,'label':"d_a_obj_roten__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80CC144C,'size':4,'pad':0,'label':"l_resFileName",'name':"l_resFileName",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CC1450,'size':4,'pad':0,'label':"l_bmdFileIdx",'name':"l_bmdFileIdx",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1454,'size':4,'pad':0,'label':"l_dzbFileIdx",'name':"l_dzbFileIdx",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CC1458,'size':32,'pad':0,'label':"daObj_Roten_MethodTable",'name':"daObj_Roten_MethodTable",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CC1478,'size':48,'pad':0,'label':"g_profile_OBJ_ROTEN",'name':"g_profile_OBJ_ROTEN",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CC14A8,'size':44,'pad':0,'label':"__vt__13daObj_Roten_c",'name':"__vt__13daObj_Roten_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__13daObj_Roten_cFv":3,
	"setBaseMtx__13daObj_Roten_cFv":4,
	"Create__13daObj_Roten_cFv":5,
	"CreateHeap__13daObj_Roten_cFv":6,
	"create__13daObj_Roten_cFv":7,
	"Execute__13daObj_Roten_cFPPA3_A4_f":8,
	"Draw__13daObj_Roten_cFv":9,
	"Delete__13daObj_Roten_cFv":10,
	"getResName__13daObj_Roten_cFv":11,
	"daObj_Roten_Create__FPv":12,
	"daObj_Roten_Delete__FPv":13,
	"daObj_Roten_Execute__FPv":14,
	"daObj_Roten_Draw__FPv":15,
	"daObj_Roten_IsDelete__FPv":16,
	"__dt__13daObj_Roten_cFv":17,
	"_ctors":18,
	"_dtors":19,
	"lit_3778":20,
	"lit_3779":21,
	"lit_3780":22,
	"lit_3781":23,
	"lit_3782":24,
	"lit_3783":25,
	"lit_3784":26,
	"lit_3785":27,
	"lit_3786":28,
	"lit_3787":29,
	"lit_3844":30,
	"lit_3853":31,
	"lit_3878":32,
	"lit_3879":33,
	"lit_3880":34,
	"lit_3881":35,
	"d_a_obj_roten__stringBase0":36,
	"l_resFileName":37,
	"l_bmdFileIdx":38,
	"l_dzbFileIdx":39,
	"daObj_Roten_MethodTable":40,
	"g_profile_OBJ_ROTEN":41,
	"__vt__13daObj_Roten_c":42,
}

