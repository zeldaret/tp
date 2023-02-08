#
# Generate By: dol2asm
# Module: 617
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_sekizo",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"global_destructor_chain",
	"d_a_obj_sekizo",
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
	{'addr':0x80CCDB20,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCDB4C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCDB78,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCDB98,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCDBB4,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCDC0C,'size':244,'pad':0,'label':"create__14daObj_Sekizo_cFv",'name':"create__14daObj_Sekizo_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCDD00,'size':140,'pad':0,'label':"CreateHeap__14daObj_Sekizo_cFv",'name':"CreateHeap__14daObj_Sekizo_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCDD8C,'size':92,'pad':0,'label':"Create__14daObj_Sekizo_cFv",'name':"Create__14daObj_Sekizo_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCDDE8,'size':84,'pad':0,'label':"Delete__14daObj_Sekizo_cFv",'name':"Delete__14daObj_Sekizo_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCDE3C,'size':184,'pad':0,'label':"Execute__14daObj_Sekizo_cFPPA3_A4_f",'name':"Execute__14daObj_Sekizo_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCDEF4,'size':176,'pad':0,'label':"Draw__14daObj_Sekizo_cFv",'name':"Draw__14daObj_Sekizo_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCDFA4,'size':60,'pad':0,'label':"initBaseMtx__14daObj_Sekizo_cFv",'name':"initBaseMtx__14daObj_Sekizo_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCDFE0,'size':100,'pad':0,'label':"setBaseMtx__14daObj_Sekizo_cFv",'name':"setBaseMtx__14daObj_Sekizo_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCE044,'size':32,'pad':0,'label':"daObj_Sekizo_Create__FPv",'name':"daObj_Sekizo_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCE064,'size':32,'pad':0,'label':"daObj_Sekizo_Delete__FPv",'name':"daObj_Sekizo_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCE084,'size':32,'pad':0,'label':"daObj_Sekizo_Execute__FPv",'name':"daObj_Sekizo_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCE0A4,'size':44,'pad':0,'label':"daObj_Sekizo_Draw__FPv",'name':"daObj_Sekizo_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCE0D0,'size':8,'pad':0,'label':"daObj_Sekizo_IsDelete__FPv",'name':"daObj_Sekizo_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80CCE0D8,'size':64,'pad':0,'label':"__sinit_d_a_obj_sekizo_cpp",'name':"__sinit_d_a_obj_sekizo_cpp",'lib':-1,'tu':3,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x80CCE118,'size':72,'pad':0,'label':"__dt__20daObj_Sekizo_Param_cFv",'name':"__dt__20daObj_Sekizo_Param_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CCE160,'size':8,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CCE168,'size':12,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CCE174,'size':8,'pad':0,'label':"d_a_obj_sekizo__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80CCE17C,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':3,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCE188,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CCE19C,'size':8,'pad':0,'label':"l_bmdData",'name':"l_bmdData",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCE1A4,'size':8,'pad':0,'label':"l_dzbData",'name':"l_dzbData",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCE1AC,'size':8,'pad':0,'label':"l_resNameList",'name':"l_resNameList",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CCE1B4,'size':32,'pad':0,'label':"daObj_Sekizo_MethodTable",'name':"daObj_Sekizo_MethodTable",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CCE1D4,'size':48,'pad':0,'label':"g_profile_OBJ_SEKIZO",'name':"g_profile_OBJ_SEKIZO",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CCE204,'size':40,'pad':0,'label':"__vt__14daObj_Sekizo_c",'name':"__vt__14daObj_Sekizo_c",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CCE22C,'size':12,'pad':0,'label':"__vt__20daObj_Sekizo_Param_c",'name':"__vt__20daObj_Sekizo_Param_c",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CCE238,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':-1,'tu':2,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCE240,'size':12,'pad':0,'label':"lit_3800",'name':"@3800",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CCE24C,'size':4,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"create__14daObj_Sekizo_cFv":5,
	"CreateHeap__14daObj_Sekizo_cFv":6,
	"Create__14daObj_Sekizo_cFv":7,
	"Delete__14daObj_Sekizo_cFv":8,
	"Execute__14daObj_Sekizo_cFPPA3_A4_f":9,
	"Draw__14daObj_Sekizo_cFv":10,
	"initBaseMtx__14daObj_Sekizo_cFv":11,
	"setBaseMtx__14daObj_Sekizo_cFv":12,
	"daObj_Sekizo_Create__FPv":13,
	"daObj_Sekizo_Delete__FPv":14,
	"daObj_Sekizo_Execute__FPv":15,
	"daObj_Sekizo_Draw__FPv":16,
	"daObj_Sekizo_IsDelete__FPv":17,
	"__sinit_d_a_obj_sekizo_cpp":18,
	"__dt__20daObj_Sekizo_Param_cFv":19,
	"_ctors":20,
	"_dtors":21,
	"d_a_obj_sekizo__stringBase0":22,
	"cNullVec__6Z2Calc":23,
	"lit_1787":24,
	"l_bmdData":25,
	"l_dzbData":26,
	"l_resNameList":27,
	"daObj_Sekizo_MethodTable":28,
	"g_profile_OBJ_SEKIZO":29,
	"__vt__14daObj_Sekizo_c":30,
	"__vt__20daObj_Sekizo_Param_c":31,
	"__global_destructor_chain":32,
	"lit_3800":33,
	"l_HIO":34,
}

