#
# Generate By: dol2asm
# Module: 616
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_sekidoor",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"global_destructor_chain",
	"d_a_obj_sekidoor",
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
	{'addr':0x80CCCF40,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCCF6C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCCF98,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCCFB8,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCCFD4,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD02C,'size':296,'pad':0,'label':"create__16daObj_SekiDoor_cFv",'name':"create__16daObj_SekiDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD154,'size':156,'pad':0,'label':"CreateHeap__16daObj_SekiDoor_cFv",'name':"CreateHeap__16daObj_SekiDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD1F0,'size':76,'pad':0,'label':"Create__16daObj_SekiDoor_cFv",'name':"Create__16daObj_SekiDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD23C,'size':84,'pad':0,'label':"Delete__16daObj_SekiDoor_cFv",'name':"Delete__16daObj_SekiDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD290,'size':652,'pad':0,'label':"Execute__16daObj_SekiDoor_cFPPA3_A4_f",'name':"Execute__16daObj_SekiDoor_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD51C,'size':28,'pad':0,'label':"dComIfGp_event_runCheck__Fv",'name':"dComIfGp_event_runCheck__Fv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD538,'size':164,'pad':0,'label':"Draw__16daObj_SekiDoor_cFv",'name':"Draw__16daObj_SekiDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD5DC,'size':112,'pad':0,'label':"evtSkip__16daObj_SekiDoor_cFv",'name':"evtSkip__16daObj_SekiDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD64C,'size':452,'pad':0,'label':"setPrtcls__16daObj_SekiDoor_cFv",'name':"setPrtcls__16daObj_SekiDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD810,'size':60,'pad':0,'label':"initBaseMtx__16daObj_SekiDoor_cFv",'name':"initBaseMtx__16daObj_SekiDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD84C,'size':140,'pad':0,'label':"setBaseMtx__16daObj_SekiDoor_cFv",'name':"setBaseMtx__16daObj_SekiDoor_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD8D8,'size':32,'pad':0,'label':"daObj_SekiDoor_Create__FPv",'name':"daObj_SekiDoor_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD8F8,'size':32,'pad':0,'label':"daObj_SekiDoor_Delete__FPv",'name':"daObj_SekiDoor_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD918,'size':32,'pad':0,'label':"daObj_SekiDoor_Execute__FPv",'name':"daObj_SekiDoor_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD938,'size':44,'pad':0,'label':"daObj_SekiDoor_Draw__FPv",'name':"daObj_SekiDoor_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD964,'size':8,'pad':0,'label':"daObj_SekiDoor_IsDelete__FPv",'name':"daObj_SekiDoor_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80CCD96C,'size':64,'pad':0,'label':"__sinit_d_a_obj_sekidoor_cpp",'name':"__sinit_d_a_obj_sekidoor_cpp",'lib':-1,'tu':3,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x80CCD9AC,'size':72,'pad':0,'label':"__dt__22daObj_SekiDoor_Param_cFv",'name':"__dt__22daObj_SekiDoor_Param_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCD9F4,'size':8,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CCD9FC,'size':12,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CCDA08,'size':1,'pad':3,'label':"m__22daObj_SekiDoor_Param_c",'name':"m__22daObj_SekiDoor_Param_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCDA0C,'size':4,'pad':0,'label':"lit_3956",'name':"@3956",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CCDA10,'size':4,'pad':0,'label':"lit_3957",'name':"@3957",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CCDA14,'size':4,'pad':0,'label':"lit_3958",'name':"@3958",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CCDA18,'size':4,'pad':0,'label':"lit_3959",'name':"@3959",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CCDA1C,'size':4,'pad':0,'label':"lit_3960",'name':"@3960",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCDA20,'size':8,'pad':0,'label':"lit_3962",'name':"@3962",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCDA28,'size':8,'pad':0,'label':"id",'name':"id$4006",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCDA30,'size':10,'pad':0,'label':"d_a_obj_sekidoor__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80CCDA3C,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':3,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCDA48,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':3,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CCDA5C,'size':8,'pad':0,'label':"l_bmdData",'name':"l_bmdData",'lib':-1,'tu':3,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCDA64,'size':8,'pad':0,'label':"l_dzbData",'name':"l_dzbData",'lib':-1,'tu':3,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCDA6C,'size':8,'pad':0,'label':"l_resNameList",'name':"l_resNameList",'lib':-1,'tu':3,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CCDA74,'size':32,'pad':0,'label':"daObj_SekiDoor_MethodTable",'name':"daObj_SekiDoor_MethodTable",'lib':-1,'tu':3,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CCDA94,'size':48,'pad':0,'label':"g_profile_OBJ_SEKIDOOR",'name':"g_profile_OBJ_SEKIDOOR",'lib':-1,'tu':3,'section':5,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CCDAC4,'size':40,'pad':0,'label':"__vt__16daObj_SekiDoor_c",'name':"__vt__16daObj_SekiDoor_c",'lib':-1,'tu':3,'section':5,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CCDAEC,'size':12,'pad':0,'label':"__vt__22daObj_SekiDoor_Param_c",'name':"__vt__22daObj_SekiDoor_Param_c",'lib':-1,'tu':3,'section':5,'class_template':False,'static':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CCDAF8,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':-1,'tu':2,'section':3,'class_template':False,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCDB00,'size':12,'pad':0,'label':"lit_3803",'name':"@3803",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCDB0C,'size':4,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"create__16daObj_SekiDoor_cFv":5,
	"CreateHeap__16daObj_SekiDoor_cFv":6,
	"Create__16daObj_SekiDoor_cFv":7,
	"Delete__16daObj_SekiDoor_cFv":8,
	"Execute__16daObj_SekiDoor_cFPPA3_A4_f":9,
	"dComIfGp_event_runCheck__Fv":10,
	"Draw__16daObj_SekiDoor_cFv":11,
	"evtSkip__16daObj_SekiDoor_cFv":12,
	"setPrtcls__16daObj_SekiDoor_cFv":13,
	"initBaseMtx__16daObj_SekiDoor_cFv":14,
	"setBaseMtx__16daObj_SekiDoor_cFv":15,
	"daObj_SekiDoor_Create__FPv":16,
	"daObj_SekiDoor_Delete__FPv":17,
	"daObj_SekiDoor_Execute__FPv":18,
	"daObj_SekiDoor_Draw__FPv":19,
	"daObj_SekiDoor_IsDelete__FPv":20,
	"__sinit_d_a_obj_sekidoor_cpp":21,
	"__dt__22daObj_SekiDoor_Param_cFv":22,
	"_ctors":23,
	"_dtors":24,
	"m__22daObj_SekiDoor_Param_c":25,
	"lit_3956":26,
	"lit_3957":27,
	"lit_3958":28,
	"lit_3959":29,
	"lit_3960":30,
	"lit_3962":31,
	"id":32,
	"d_a_obj_sekidoor__stringBase0":33,
	"cNullVec__6Z2Calc":34,
	"lit_1787":35,
	"l_bmdData":36,
	"l_dzbData":37,
	"l_resNameList":38,
	"daObj_SekiDoor_MethodTable":39,
	"g_profile_OBJ_SEKIDOOR":40,
	"__vt__16daObj_SekiDoor_c":41,
	"__vt__22daObj_SekiDoor_Param_c":42,
	"__global_destructor_chain":43,
	"lit_3803":44,
	"l_HIO":45,
}

