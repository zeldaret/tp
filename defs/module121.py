#
# Generate By: dol2asm
# Module: 121
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_cstasw",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"global_destructor_chain",
	"d_a_tag_CstaSw",
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
	{'addr':0x805A1F40,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1F6C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1F98,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1FB8,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A1FD4,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A202C,'size':36,'pad':0,'label':"__ct__17daTagCstaSw_HIO_cFv",'name':"__ct__17daTagCstaSw_HIO_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2050,'size':72,'pad':0,'label':"__dt__14mDoHIO_entry_cFv",'name':"__dt__14mDoHIO_entry_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2098,'size':88,'pad':0,'label':"setBaseMtx__13daTagCstaSw_cFv",'name':"setBaseMtx__13daTagCstaSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A20F0,'size':96,'pad':0,'label':"create__13daTagCstaSw_cFv",'name':"create__13daTagCstaSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2150,'size':80,'pad':0,'label':"searchSekizoAct__13daTagCstaSw_cFPvPv",'name':"searchSekizoAct__13daTagCstaSw_cFPvPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A21A0,'size':416,'pad':0,'label':"areaCheck__13daTagCstaSw_cFv",'name':"areaCheck__13daTagCstaSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2340,'size':176,'pad':0,'label':"Execute__13daTagCstaSw_cFv",'name':"Execute__13daTagCstaSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A23F0,'size':8,'pad':0,'label':"Draw__13daTagCstaSw_cFv",'name':"Draw__13daTagCstaSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x805A23F8,'size':8,'pad':0,'label':"Delete__13daTagCstaSw_cFv",'name':"Delete__13daTagCstaSw_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x805A2400,'size':32,'pad':0,'label':"daTagCstaSw_Draw__FP13daTagCstaSw_c",'name':"daTagCstaSw_Draw__FP13daTagCstaSw_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2420,'size':32,'pad':0,'label':"daTagCstaSw_Execute__FP13daTagCstaSw_c",'name':"daTagCstaSw_Execute__FP13daTagCstaSw_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2440,'size':32,'pad':0,'label':"daTagCstaSw_Delete__FP13daTagCstaSw_c",'name':"daTagCstaSw_Delete__FP13daTagCstaSw_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2460,'size':32,'pad':0,'label':"daTagCstaSw_Create__FP10fopAc_ac_c",'name':"daTagCstaSw_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A2480,'size':92,'pad':0,'label':"__dt__17daTagCstaSw_HIO_cFv",'name':"__dt__17daTagCstaSw_HIO_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A24DC,'size':60,'pad':0,'label':"__sinit_d_a_tag_CstaSw_cpp",'name':"__sinit_d_a_tag_CstaSw_cpp",'lib':-1,'tu':3,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x805A2518,'size':8,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x805A2520,'size':12,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x805A252C,'size':4,'pad':4,'label':"lit_3724",'name':"@3724",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A2534,'size':8,'pad':0,'label':"lit_3725",'name':"@3725",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A253C,'size':8,'pad':0,'label':"lit_3726",'name':"@3726",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A2544,'size':8,'pad':0,'label':"lit_3727",'name':"@3727",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A254C,'size':4,'pad':0,'label':"lit_3728",'name':"@3728",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A2550,'size':32,'pad':0,'label':"l_daTagCstaSw_Method",'name':"l_daTagCstaSw_Method",'lib':-1,'tu':3,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A2570,'size':48,'pad':0,'label':"g_profile_Tag_CstaSw",'name':"g_profile_Tag_CstaSw",'lib':-1,'tu':3,'section':5,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A25A0,'size':12,'pad':0,'label':"__vt__17daTagCstaSw_HIO_c",'name':"__vt__17daTagCstaSw_HIO_c",'lib':-1,'tu':3,'section':5,'class_template':False,'static':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x805A25AC,'size':12,'pad':0,'label':"__vt__14mDoHIO_entry_c",'name':"__vt__14mDoHIO_entry_c",'lib':-1,'tu':3,'section':5,'class_template':False,'static':False,'is_reachable':True,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x805A25B8,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':-1,'tu':2,'section':3,'class_template':False,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A25C0,'size':12,'pad':0,'label':"lit_3619",'name':"@3619",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A25CC,'size':8,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__17daTagCstaSw_HIO_cFv":5,
	"__dt__14mDoHIO_entry_cFv":6,
	"setBaseMtx__13daTagCstaSw_cFv":7,
	"create__13daTagCstaSw_cFv":8,
	"searchSekizoAct__13daTagCstaSw_cFPvPv":9,
	"areaCheck__13daTagCstaSw_cFv":10,
	"Execute__13daTagCstaSw_cFv":11,
	"Draw__13daTagCstaSw_cFv":12,
	"Delete__13daTagCstaSw_cFv":13,
	"daTagCstaSw_Draw__FP13daTagCstaSw_c":14,
	"daTagCstaSw_Execute__FP13daTagCstaSw_c":15,
	"daTagCstaSw_Delete__FP13daTagCstaSw_c":16,
	"daTagCstaSw_Create__FP10fopAc_ac_c":17,
	"__dt__17daTagCstaSw_HIO_cFv":18,
	"__sinit_d_a_tag_CstaSw_cpp":19,
	"_ctors":20,
	"_dtors":21,
	"lit_3724":22,
	"lit_3725":23,
	"lit_3726":24,
	"lit_3727":25,
	"lit_3728":26,
	"l_daTagCstaSw_Method":27,
	"g_profile_Tag_CstaSw":28,
	"__vt__17daTagCstaSw_HIO_c":29,
	"__vt__14mDoHIO_entry_c":30,
	"__global_destructor_chain":31,
	"lit_3619":32,
	"l_HIO":33,
}

