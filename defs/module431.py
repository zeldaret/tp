#
# Generate By: dol2asm
# Module: 431
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_crvsteel",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_crvsteel",
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
	{'addr':0x80BD5B40,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5B6C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5B98,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5BB8,'size':32,'pad':0,'label':"daObjCRVSTEEL_Create__FP10fopAc_ac_c",'name':"daObjCRVSTEEL_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5BD8,'size':36,'pad':0,'label':"daObjCRVSTEEL_Delete__FP15daObjCRVSTEEL_c",'name':"daObjCRVSTEEL_Delete__FP15daObjCRVSTEEL_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5BFC,'size':28,'pad':0,'label':"OpenSet__15daObjCRVSTEEL_cFff",'name':"OpenSet__15daObjCRVSTEEL_cFff",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5C18,'size':16,'pad':0,'label':"CloseSet__15daObjCRVSTEEL_cFf",'name':"CloseSet__15daObjCRVSTEEL_cFf",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5C28,'size':120,'pad':0,'label':"CloseExecute__15daObjCRVSTEEL_cFv",'name':"CloseExecute__15daObjCRVSTEEL_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5CA0,'size':40,'pad':0,'label':"OpenExecute__15daObjCRVSTEEL_cFv",'name':"OpenExecute__15daObjCRVSTEEL_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5CC8,'size':72,'pad':0,'label':"Action__15daObjCRVSTEEL_cFv",'name':"Action__15daObjCRVSTEEL_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5D10,'size':92,'pad':0,'label':"setBaseMtx__15daObjCRVSTEEL_cFv",'name':"setBaseMtx__15daObjCRVSTEEL_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5D6C,'size':44,'pad':0,'label':"daObjCRVSTEEL_Draw__FP15daObjCRVSTEEL_c",'name':"daObjCRVSTEEL_Draw__FP15daObjCRVSTEEL_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5D98,'size':32,'pad':0,'label':"daObjCRVSTEEL_Execute__FP15daObjCRVSTEEL_c",'name':"daObjCRVSTEEL_Execute__FP15daObjCRVSTEEL_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5DB8,'size':120,'pad':0,'label':"CreateHeap__15daObjCRVSTEEL_cFv",'name':"CreateHeap__15daObjCRVSTEEL_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD5E30,'size':512,'pad':0,'label':"create__15daObjCRVSTEEL_cFv",'name':"create__15daObjCRVSTEEL_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD6030,'size':112,'pad':0,'label':"__dt__12dBgS_ObjAcchFv",'name':"__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD60A0,'size':8,'pad':0,'label':"daObjCRVSTEEL_IsDelete__FP15daObjCRVSTEEL_c",'name':"daObjCRVSTEEL_IsDelete__FP15daObjCRVSTEEL_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80BD60A8,'size':68,'pad':0,'label':"Create__15daObjCRVSTEEL_cFv",'name':"Create__15daObjCRVSTEEL_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD60EC,'size':76,'pad':0,'label':"Execute__15daObjCRVSTEEL_cFPPA3_A4_f",'name':"Execute__15daObjCRVSTEEL_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD6138,'size':132,'pad':0,'label':"Draw__15daObjCRVSTEEL_cFv",'name':"Draw__15daObjCRVSTEEL_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD61BC,'size':52,'pad':0,'label':"Delete__15daObjCRVSTEEL_cFv",'name':"Delete__15daObjCRVSTEEL_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD61F0,'size':8,'pad':0,'label':"func_80BD61F0",'name':"@36@__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':3,'section':0,'class_template':None,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD61F8,'size':8,'pad':0,'label':"func_80BD61F8",'name':"@20@__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':3,'section':0,'class_template':None,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BD6200,'size':4,'pad':0,'label':"data_80BD6200",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BD6204,'size':4,'pad':0,'label':"data_80BD6204",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BD6208,'size':4,'pad':0,'label':"lit_3789",'name':"@3789",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BD620C,'size':4,'pad':0,'label':"lit_3900",'name':"@3900",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BD6210,'size':4,'pad':0,'label':"lit_3901",'name':"@3901",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BD6214,'size':4,'pad':0,'label':"lit_3902",'name':"@3902",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BD6218,'size':4,'pad':0,'label':"lit_3903",'name':"@3903",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BD621C,'size':4,'pad':0,'label':"lit_3904",'name':"@3904",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BD6220,'size':4,'pad':0,'label':"lit_3905",'name':"@3905",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BD6224,'size':4,'pad':0,'label':"lit_3906",'name':"@3906",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BD6228,'size':4,'pad':0,'label':"lit_3907",'name':"@3907",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BD622C,'size':4,'pad':0,'label':"lit_3947",'name':"@3947",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BD6230,'size':4,'pad':0,'label':"lit_3948",'name':"@3948",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BD6234,'size':4,'pad':0,'label':"lit_3949",'name':"@3949",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BD6238,'size':4,'pad':0,'label':"lit_3950",'name':"@3950",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BD623C,'size':47,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80BD626C,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BD6270,'size':32,'pad':0,'label':"l_daObjCRVSTEEL_Method",'name':"l_daObjCRVSTEEL_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BD6290,'size':48,'pad':0,'label':"g_profile_Obj_CRVSTEEL",'name':"g_profile_Obj_CRVSTEEL",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BD62C0,'size':36,'pad':0,'label':"__vt__12dBgS_ObjAcch",'name':"__vt__12dBgS_ObjAcch",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80BD62E4,'size':40,'pad':0,'label':"__vt__15daObjCRVSTEEL_c",'name':"__vt__15daObjCRVSTEEL_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daObjCRVSTEEL_Create__FP10fopAc_ac_c":3,
	"daObjCRVSTEEL_Delete__FP15daObjCRVSTEEL_c":4,
	"OpenSet__15daObjCRVSTEEL_cFff":5,
	"CloseSet__15daObjCRVSTEEL_cFf":6,
	"CloseExecute__15daObjCRVSTEEL_cFv":7,
	"OpenExecute__15daObjCRVSTEEL_cFv":8,
	"Action__15daObjCRVSTEEL_cFv":9,
	"setBaseMtx__15daObjCRVSTEEL_cFv":10,
	"daObjCRVSTEEL_Draw__FP15daObjCRVSTEEL_c":11,
	"daObjCRVSTEEL_Execute__FP15daObjCRVSTEEL_c":12,
	"CreateHeap__15daObjCRVSTEEL_cFv":13,
	"create__15daObjCRVSTEEL_cFv":14,
	"__dt__12dBgS_ObjAcchFv":15,
	"daObjCRVSTEEL_IsDelete__FP15daObjCRVSTEEL_c":16,
	"Create__15daObjCRVSTEEL_cFv":17,
	"Execute__15daObjCRVSTEEL_cFPPA3_A4_f":18,
	"Draw__15daObjCRVSTEEL_cFv":19,
	"Delete__15daObjCRVSTEEL_cFv":20,
	"func_80BD61F0":21,
	"func_80BD61F8":22,
	"data_80BD6200":23,
	"data_80BD6204":24,
	"lit_3789":25,
	"lit_3900":26,
	"lit_3901":27,
	"lit_3902":28,
	"lit_3903":29,
	"lit_3904":30,
	"lit_3905":31,
	"lit_3906":32,
	"lit_3907":33,
	"lit_3947":34,
	"lit_3948":35,
	"lit_3949":36,
	"lit_3950":37,
	"stringBase0":38,
	"l_arcName":39,
	"l_daObjCRVSTEEL_Method":40,
	"g_profile_Obj_CRVSTEEL":41,
	"__vt__12dBgS_ObjAcch":42,
	"__vt__15daObjCRVSTEEL_c":43,
}

