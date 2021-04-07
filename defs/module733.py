#
# Generate By: dol2asm
# Module: 733
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_poFire",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"global_destructor_chain",
	"d_a_tag_poFire",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".dtors",
	".bss",
	".data",
]

# Symbols
SYMBOLS = [
	{'addr':0x80D5D9E0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DA0C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DA38,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DA58,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DA74,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DACC,'size':36,'pad':0,'label':"__ct__17daTagPoFire_HIO_cFv",'name':"__ct__17daTagPoFire_HIO_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DAF0,'size':72,'pad':0,'label':"__dt__14mDoHIO_entry_cFv",'name':"__dt__14mDoHIO_entry_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DB38,'size':88,'pad':0,'label':"setBaseMtx__13daTagPoFire_cFv",'name':"setBaseMtx__13daTagPoFire_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DB90,'size':96,'pad':0,'label':"create__13daTagPoFire_cFv",'name':"create__13daTagPoFire_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DBF0,'size':48,'pad':0,'label':"Execute__13daTagPoFire_cFv",'name':"Execute__13daTagPoFire_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DC20,'size':8,'pad':0,'label':"Draw__13daTagPoFire_cFv",'name':"Draw__13daTagPoFire_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D5DC28,'size':8,'pad':0,'label':"Delete__13daTagPoFire_cFv",'name':"Delete__13daTagPoFire_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D5DC30,'size':32,'pad':0,'label':"daTagPoFire_Draw__FP13daTagPoFire_c",'name':"daTagPoFire_Draw__FP13daTagPoFire_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DC50,'size':32,'pad':0,'label':"daTagPoFire_Execute__FP13daTagPoFire_c",'name':"daTagPoFire_Execute__FP13daTagPoFire_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DC70,'size':32,'pad':0,'label':"daTagPoFire_Delete__FP13daTagPoFire_c",'name':"daTagPoFire_Delete__FP13daTagPoFire_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DC90,'size':32,'pad':0,'label':"daTagPoFire_Create__FP10fopAc_ac_c",'name':"daTagPoFire_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DCB0,'size':92,'pad':0,'label':"__dt__17daTagPoFire_HIO_cFv",'name':"__dt__17daTagPoFire_HIO_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5DD0C,'size':60,'pad':0,'label':"__sinit_d_a_tag_poFire_cpp",'name':"__sinit_d_a_tag_poFire_cpp",'lib':-1,'tu':3,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x80D5DD48,'size':8,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D5DD50,'size':12,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D5DD5C,'size':32,'pad':0,'label':"l_daTagPoFire_Method",'name':"l_daTagPoFire_Method",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D5DD7C,'size':48,'pad':0,'label':"g_profile_Tag_poFire",'name':"g_profile_Tag_poFire",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D5DDAC,'size':12,'pad':0,'label':"__vt__17daTagPoFire_HIO_c",'name':"__vt__17daTagPoFire_HIO_c",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D5DDB8,'size':12,'pad':0,'label':"__vt__14mDoHIO_entry_c",'name':"__vt__14mDoHIO_entry_c",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':True,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D5DDC8,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':-1,'tu':2,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5DDD0,'size':12,'pad':0,'label':"lit_3617",'name':"@3617",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D5DDDC,'size':8,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__17daTagPoFire_HIO_cFv":5,
	"__dt__14mDoHIO_entry_cFv":6,
	"setBaseMtx__13daTagPoFire_cFv":7,
	"create__13daTagPoFire_cFv":8,
	"Execute__13daTagPoFire_cFv":9,
	"Draw__13daTagPoFire_cFv":10,
	"Delete__13daTagPoFire_cFv":11,
	"daTagPoFire_Draw__FP13daTagPoFire_c":12,
	"daTagPoFire_Execute__FP13daTagPoFire_c":13,
	"daTagPoFire_Delete__FP13daTagPoFire_c":14,
	"daTagPoFire_Create__FP10fopAc_ac_c":15,
	"__dt__17daTagPoFire_HIO_cFv":16,
	"__sinit_d_a_tag_poFire_cpp":17,
	"_ctors":18,
	"_dtors":19,
	"l_daTagPoFire_Method":20,
	"g_profile_Tag_poFire":21,
	"__vt__17daTagPoFire_HIO_c":22,
	"__vt__14mDoHIO_entry_c":23,
	"__global_destructor_chain":24,
	"lit_3617":25,
	"l_HIO":26,
}

