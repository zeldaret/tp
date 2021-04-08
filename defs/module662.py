#
# Generate By: dol2asm
# Module: 662
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_toaru_maki",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_toaru_maki",
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
	{'addr':0x80D13000,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1302C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D13058,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D13078,'size':32,'pad':0,'label':"daObjToaruMaki_c_createHeap__FP10fopAc_ac_c",'name':"daObjToaruMaki_c_createHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D13098,'size':72,'pad':0,'label':"__ct__16daObjToaruMaki_cFv",'name':"__ct__16daObjToaruMaki_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D130E0,'size':140,'pad':0,'label':"__dt__16daObjToaruMaki_cFv",'name':"__dt__16daObjToaruMaki_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1316C,'size':328,'pad':0,'label':"createHeap__16daObjToaruMaki_cFv",'name':"createHeap__16daObjToaruMaki_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D132B4,'size':268,'pad':0,'label':"create__16daObjToaruMaki_cFv",'name':"create__16daObjToaruMaki_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D133C0,'size':124,'pad':0,'label':"Delete__16daObjToaruMaki_cFv",'name':"Delete__16daObjToaruMaki_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1343C,'size':100,'pad':0,'label':"setModelMtx__16daObjToaruMaki_cFv",'name':"setModelMtx__16daObjToaruMaki_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D134A0,'size':132,'pad':0,'label':"draw__16daObjToaruMaki_cFv",'name':"draw__16daObjToaruMaki_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D13524,'size':36,'pad':0,'label':"execute__16daObjToaruMaki_cFv",'name':"execute__16daObjToaruMaki_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D13548,'size':84,'pad':0,'label':"daObjToaruMaki_create__FP16daObjToaruMaki_c",'name':"daObjToaruMaki_create__FP16daObjToaruMaki_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D1359C,'size':32,'pad':0,'label':"daObjToaruMaki_Delete__FP16daObjToaruMaki_c",'name':"daObjToaruMaki_Delete__FP16daObjToaruMaki_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D135BC,'size':32,'pad':0,'label':"daObjToaruMaki_execute__FP16daObjToaruMaki_c",'name':"daObjToaruMaki_execute__FP16daObjToaruMaki_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D135DC,'size':32,'pad':0,'label':"daObjToaruMaki_draw__FP16daObjToaruMaki_c",'name':"daObjToaruMaki_draw__FP16daObjToaruMaki_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D135FC,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D13600,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D13604,'size':8,'pad':0,'label':"l_bmdIdx",'name':"l_bmdIdx",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D1360C,'size':8,'pad':0,'label':"l_heapSize",'name':"l_heapSize",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D13614,'size':16,'pad':0,'label':"d_a_obj_toaru_maki__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D13624,'size':8,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D1362C,'size':32,'pad':0,'label':"daObjToaruMaki_METHODS",'name':"daObjToaruMaki_METHODS",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D1364C,'size':48,'pad':0,'label':"g_profile_Obj_ToaruMaki",'name':"g_profile_Obj_ToaruMaki",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D1367C,'size':12,'pad':0,'label':"__vt__16daObjToaruMaki_c",'name':"__vt__16daObjToaruMaki_c",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daObjToaruMaki_c_createHeap__FP10fopAc_ac_c":3,
	"__ct__16daObjToaruMaki_cFv":4,
	"__dt__16daObjToaruMaki_cFv":5,
	"createHeap__16daObjToaruMaki_cFv":6,
	"create__16daObjToaruMaki_cFv":7,
	"Delete__16daObjToaruMaki_cFv":8,
	"setModelMtx__16daObjToaruMaki_cFv":9,
	"draw__16daObjToaruMaki_cFv":10,
	"execute__16daObjToaruMaki_cFv":11,
	"daObjToaruMaki_create__FP16daObjToaruMaki_c":12,
	"daObjToaruMaki_Delete__FP16daObjToaruMaki_c":13,
	"daObjToaruMaki_execute__FP16daObjToaruMaki_c":14,
	"daObjToaruMaki_draw__FP16daObjToaruMaki_c":15,
	"_ctors":16,
	"_dtors":17,
	"l_bmdIdx":18,
	"l_heapSize":19,
	"d_a_obj_toaru_maki__stringBase0":20,
	"l_arcName":21,
	"daObjToaruMaki_METHODS":22,
	"g_profile_Obj_ToaruMaki":23,
	"__vt__16daObjToaruMaki_c":24,
}

