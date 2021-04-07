#
# Generate By: dol2asm
# Module: 36
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_lantern",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"global_destructor_chain",
	"d_a_tag_lantern",
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
	{'addr':0x8048EBC0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048EBEC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048EC18,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048EC38,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048EC54,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048ECAC,'size':124,'pad':0,'label':"__dt__15daTag_Lantern_cFv",'name':"__dt__15daTag_Lantern_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048ED28,'size':128,'pad':0,'label':"create__15daTag_Lantern_cFv",'name':"create__15daTag_Lantern_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048EDA8,'size':52,'pad':0,'label':"Delete__15daTag_Lantern_cFv",'name':"Delete__15daTag_Lantern_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048EDDC,'size':400,'pad':0,'label':"Execute__15daTag_Lantern_cFv",'name':"Execute__15daTag_Lantern_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048EF6C,'size':8,'pad':0,'label':"Draw__15daTag_Lantern_cFv",'name':"Draw__15daTag_Lantern_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048EF74,'size':176,'pad':0,'label':"initialize__15daTag_Lantern_cFv",'name':"initialize__15daTag_Lantern_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F024,'size':32,'pad':0,'label':"daTag_Lantern_Create__FPv",'name':"daTag_Lantern_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F044,'size':32,'pad':0,'label':"daTag_Lantern_Delete__FPv",'name':"daTag_Lantern_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F064,'size':32,'pad':0,'label':"daTag_Lantern_Execute__FPv",'name':"daTag_Lantern_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F084,'size':32,'pad':0,'label':"daTag_Lantern_Draw__FPv",'name':"daTag_Lantern_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F0A4,'size':8,'pad':0,'label':"daTag_Lantern_IsDelete__FPv",'name':"daTag_Lantern_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048F0AC,'size':64,'pad':0,'label':"__sinit_d_a_tag_lantern_cpp",'name':"__sinit_d_a_tag_lantern_cpp",'lib':-1,'tu':3,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x8048F0EC,'size':72,'pad':0,'label':"__dt__21daTag_Lantern_Param_cFv",'name':"__dt__21daTag_Lantern_Param_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F134,'size':8,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8048F13C,'size':12,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8048F148,'size':4,'pad':0,'label':"lit_3683",'name':"@3683",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8048F14C,'size':4,'pad':0,'label':"lit_3697",'name':"@3697",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048F150,'size':4,'pad':0,'label':"lit_3698",'name':"@3698",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8048F154,'size':32,'pad':0,'label':"daTag_Lantern_MethodTable",'name':"daTag_Lantern_MethodTable",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048F174,'size':48,'pad':0,'label':"g_profile_TAG_LANTERN",'name':"g_profile_TAG_LANTERN",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048F1A4,'size':12,'pad':0,'label':"__vt__15daTag_Lantern_c",'name':"__vt__15daTag_Lantern_c",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x8048F1B0,'size':12,'pad':0,'label':"__vt__21daTag_Lantern_Param_c",'name':"__vt__21daTag_Lantern_Param_c",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x8048F1C0,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':-1,'tu':2,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048F1C8,'size':12,'pad':0,'label':"lit_3622",'name':"@3622",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048F1D4,'size':4,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__dt__15daTag_Lantern_cFv":5,
	"create__15daTag_Lantern_cFv":6,
	"Delete__15daTag_Lantern_cFv":7,
	"Execute__15daTag_Lantern_cFv":8,
	"Draw__15daTag_Lantern_cFv":9,
	"initialize__15daTag_Lantern_cFv":10,
	"daTag_Lantern_Create__FPv":11,
	"daTag_Lantern_Delete__FPv":12,
	"daTag_Lantern_Execute__FPv":13,
	"daTag_Lantern_Draw__FPv":14,
	"daTag_Lantern_IsDelete__FPv":15,
	"__sinit_d_a_tag_lantern_cpp":16,
	"__dt__21daTag_Lantern_Param_cFv":17,
	"_ctors":18,
	"_dtors":19,
	"lit_3683":20,
	"lit_3697":21,
	"lit_3698":22,
	"daTag_Lantern_MethodTable":23,
	"g_profile_TAG_LANTERN":24,
	"__vt__15daTag_Lantern_c":25,
	"__vt__21daTag_Lantern_Param_c":26,
	"__global_destructor_chain":27,
	"lit_3622":28,
	"l_HIO":29,
}

