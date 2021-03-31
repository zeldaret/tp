#
# Generate By: dol2asm
# Module: 659
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_timeFire",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_obj_timeFire",
	"global_destructor_chain",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".rodata",
	".data",
	".bss",
	".dtors",
]

# Symbols
SYMBOLS = [
	{'addr':0x80D0E800,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0E82C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0E858,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0E878,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'class_template':None,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0E894,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'class_template':None,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0E8EC,'size':36,'pad':0,'label':"__ct__16daTimeFire_HIO_cFv",'name':"__ct__16daTimeFire_HIO_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0E910,'size':72,'pad':0,'label':"__dt__14mDoHIO_entry_cFv",'name':"__dt__14mDoHIO_entry_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0E958,'size':88,'pad':0,'label':"setBaseMtx__12daTimeFire_cFv",'name':"setBaseMtx__12daTimeFire_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0E9B0,'size':284,'pad':0,'label':"create__12daTimeFire_cFv",'name':"create__12daTimeFire_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0EACC,'size':116,'pad':0,'label':"lightInit__12daTimeFire_cFv",'name':"lightInit__12daTimeFire_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0EB40,'size':36,'pad':0,'label':"setLight__12daTimeFire_cFv",'name':"setLight__12daTimeFire_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0EB64,'size':36,'pad':0,'label':"cutLight__12daTimeFire_cFv",'name':"cutLight__12daTimeFire_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0EB88,'size':480,'pad':0,'label':"Execute__12daTimeFire_cFv",'name':"Execute__12daTimeFire_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0ED68,'size':544,'pad':0,'label':"fireCheck__12daTimeFire_cFUc",'name':"fireCheck__12daTimeFire_cFUc",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0EF88,'size':8,'pad':0,'label':"Draw__12daTimeFire_cFv",'name':"Draw__12daTimeFire_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D0EF90,'size':40,'pad':0,'label':"Delete__12daTimeFire_cFv",'name':"Delete__12daTimeFire_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0EFB8,'size':32,'pad':0,'label':"daTimeFire_Draw__FP12daTimeFire_c",'name':"daTimeFire_Draw__FP12daTimeFire_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0EFD8,'size':32,'pad':0,'label':"daTimeFire_Execute__FP12daTimeFire_c",'name':"daTimeFire_Execute__FP12daTimeFire_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0EFF8,'size':32,'pad':0,'label':"daTimeFire_Delete__FP12daTimeFire_c",'name':"daTimeFire_Delete__FP12daTimeFire_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0F018,'size':32,'pad':0,'label':"daTimeFire_Create__FP10fopAc_ac_c",'name':"daTimeFire_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0F038,'size':92,'pad':0,'label':"__dt__16daTimeFire_HIO_cFv",'name':"__dt__16daTimeFire_HIO_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0F094,'size':60,'pad':0,'label':"__sinit_d_a_obj_timeFire_cpp",'name':"__sinit_d_a_obj_timeFire_cpp",'lib':-1,'tu':2,'section':0,'class_template':None,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x80D0F0D0,'size':8,'pad':0,'label':"data_80D0F0D0",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D0F0D8,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D0F0DC,'size':8,'pad':0,'label':"pad_80D0F0DC",'name':None,'lib':1,'tu':3,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D0F0E4,'size':4,'pad':4,'label':"lit_3686",'name':"@3686",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D0F0EC,'size':8,'pad':0,'label':"lit_3688",'name':"@3688",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D0F0F4,'size':4,'pad':0,'label':"lit_3707",'name':"@3707",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D0F0F8,'size':4,'pad':0,'label':"lit_3708",'name':"@3708",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D0F0FC,'size':4,'pad':0,'label':"lit_3757",'name':"@3757",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D0F100,'size':32,'pad':0,'label':"l_daTimeFire_Method",'name':"l_daTimeFire_Method",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D0F120,'size':48,'pad':0,'label':"g_profile_Obj_TimeFire",'name':"g_profile_Obj_TimeFire",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D0F150,'size':12,'pad':0,'label':"__vt__16daTimeFire_HIO_c",'name':"__vt__16daTimeFire_HIO_c",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D0F15C,'size':12,'pad':0,'label':"__vt__14mDoHIO_entry_c",'name':"__vt__14mDoHIO_entry_c",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':True,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D0F168,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D0F170,'size':12,'pad':0,'label':"lit_3621",'name':"@3621",'lib':-1,'tu':2,'section':4,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D0F17C,'size':8,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__16daTimeFire_HIO_cFv":5,
	"__dt__14mDoHIO_entry_cFv":6,
	"setBaseMtx__12daTimeFire_cFv":7,
	"create__12daTimeFire_cFv":8,
	"lightInit__12daTimeFire_cFv":9,
	"setLight__12daTimeFire_cFv":10,
	"cutLight__12daTimeFire_cFv":11,
	"Execute__12daTimeFire_cFv":12,
	"fireCheck__12daTimeFire_cFUc":13,
	"Draw__12daTimeFire_cFv":14,
	"Delete__12daTimeFire_cFv":15,
	"daTimeFire_Draw__FP12daTimeFire_c":16,
	"daTimeFire_Execute__FP12daTimeFire_c":17,
	"daTimeFire_Delete__FP12daTimeFire_c":18,
	"daTimeFire_Create__FP10fopAc_ac_c":19,
	"__dt__16daTimeFire_HIO_cFv":20,
	"__sinit_d_a_obj_timeFire_cpp":21,
	"data_80D0F0D0":22,
	"__destroy_global_chain_reference":23,
	"pad_80D0F0DC":24,
	"lit_3686":25,
	"lit_3688":26,
	"lit_3707":27,
	"lit_3708":28,
	"lit_3757":29,
	"l_daTimeFire_Method":30,
	"g_profile_Obj_TimeFire":31,
	"__vt__16daTimeFire_HIO_c":32,
	"__vt__14mDoHIO_entry_c":33,
	"__global_destructor_chain":34,
	"lit_3621":35,
	"l_HIO":36,
}

