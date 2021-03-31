#
# Generate By: dol2asm
# Module: 501
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_kiPot",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_obj_kiPot",
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
	{'addr':0x80C44C20,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C44C4C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C44C78,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C44C98,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'class_template':None,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C44CB4,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'class_template':None,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C44D0C,'size':36,'pad':0,'label':"__ct__13daKiPot_HIO_cFv",'name':"__ct__13daKiPot_HIO_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C44D30,'size':72,'pad':0,'label':"__dt__14mDoHIO_entry_cFv",'name':"__dt__14mDoHIO_entry_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C44D78,'size':88,'pad':0,'label':"setBaseMtx__9daKiPot_cFv",'name':"setBaseMtx__9daKiPot_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C44DD0,'size':172,'pad':0,'label':"create__9daKiPot_cFv",'name':"create__9daKiPot_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C44E7C,'size':124,'pad':0,'label':"Execute__9daKiPot_cFv",'name':"Execute__9daKiPot_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C44EF8,'size':124,'pad':0,'label':"procMain__9daKiPot_cFv",'name':"procMain__9daKiPot_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C44F74,'size':12,'pad':0,'label':"init_modeWait__9daKiPot_cFv",'name':"init_modeWait__9daKiPot_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C44F80,'size':136,'pad':0,'label':"modeWait__9daKiPot_cFv",'name':"modeWait__9daKiPot_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C45008,'size':80,'pad':0,'label':"chkEvent__9daKiPot_cFv",'name':"chkEvent__9daKiPot_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C45058,'size':8,'pad':0,'label':"Draw__9daKiPot_cFv",'name':"Draw__9daKiPot_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C45060,'size':8,'pad':0,'label':"Delete__9daKiPot_cFv",'name':"Delete__9daKiPot_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C45068,'size':32,'pad':0,'label':"daKiPot_Draw__FP9daKiPot_c",'name':"daKiPot_Draw__FP9daKiPot_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C45088,'size':32,'pad':0,'label':"daKiPot_Execute__FP9daKiPot_c",'name':"daKiPot_Execute__FP9daKiPot_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C450A8,'size':32,'pad':0,'label':"daKiPot_Delete__FP9daKiPot_c",'name':"daKiPot_Delete__FP9daKiPot_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C450C8,'size':32,'pad':0,'label':"daKiPot_Create__FP10fopAc_ac_c",'name':"daKiPot_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C450E8,'size':92,'pad':0,'label':"__dt__13daKiPot_HIO_cFv",'name':"__dt__13daKiPot_HIO_cFv",'lib':-1,'tu':2,'section':0,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C45144,'size':60,'pad':0,'label':"__sinit_d_a_obj_kiPot_cpp",'name':"__sinit_d_a_obj_kiPot_cpp",'lib':-1,'tu':2,'section':0,'class_template':None,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x80C45180,'size':8,'pad':0,'label':"data_80C45180",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C45188,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C4518C,'size':8,'pad':0,'label':"pad_80C4518C",'name':None,'lib':1,'tu':3,'section':5,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C45194,'size':4,'pad':0,'label':"lit_3683",'name':"@3683",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C45198,'size':4,'pad':0,'label':"lit_3711",'name':"@3711",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C4519C,'size':4,'pad':0,'label':"lit_3712",'name':"@3712",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C451A0,'size':4,'pad':0,'label':"lit_3713",'name':"@3713",'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C451A4,'size':24,'pad':0,'label':"l_cull_box",'name':"l_cull_box",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C451BC,'size':12,'pad':0,'label':"lit_3688",'name':"@3688",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C451C8,'size':12,'pad':0,'label':"mode_proc",'name':"mode_proc$3687",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C451D4,'size':32,'pad':0,'label':"l_daKiPot_Method",'name':"l_daKiPot_Method",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C451F4,'size':48,'pad':0,'label':"g_profile_Obj_KiPot",'name':"g_profile_Obj_KiPot",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C45224,'size':12,'pad':0,'label':"__vt__13daKiPot_HIO_c",'name':"__vt__13daKiPot_HIO_c",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C45230,'size':12,'pad':0,'label':"__vt__14mDoHIO_entry_c",'name':"__vt__14mDoHIO_entry_c",'lib':-1,'tu':2,'section':3,'class_template':False,'is_reachable':True,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C45240,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C45248,'size':12,'pad':0,'label':"lit_3620",'name':"@3620",'lib':-1,'tu':2,'section':4,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C45254,'size':8,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C4525C,'size':4,'pad':0,'label':"data_80C4525C",'name':None,'lib':-1,'tu':2,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__13daKiPot_HIO_cFv":5,
	"__dt__14mDoHIO_entry_cFv":6,
	"setBaseMtx__9daKiPot_cFv":7,
	"create__9daKiPot_cFv":8,
	"Execute__9daKiPot_cFv":9,
	"procMain__9daKiPot_cFv":10,
	"init_modeWait__9daKiPot_cFv":11,
	"modeWait__9daKiPot_cFv":12,
	"chkEvent__9daKiPot_cFv":13,
	"Draw__9daKiPot_cFv":14,
	"Delete__9daKiPot_cFv":15,
	"daKiPot_Draw__FP9daKiPot_c":16,
	"daKiPot_Execute__FP9daKiPot_c":17,
	"daKiPot_Delete__FP9daKiPot_c":18,
	"daKiPot_Create__FP10fopAc_ac_c":19,
	"__dt__13daKiPot_HIO_cFv":20,
	"__sinit_d_a_obj_kiPot_cpp":21,
	"data_80C45180":22,
	"__destroy_global_chain_reference":23,
	"pad_80C4518C":24,
	"lit_3683":25,
	"lit_3711":26,
	"lit_3712":27,
	"lit_3713":28,
	"l_cull_box":29,
	"lit_3688":30,
	"mode_proc":31,
	"l_daKiPot_Method":32,
	"g_profile_Obj_KiPot":33,
	"__vt__13daKiPot_HIO_c":34,
	"__vt__14mDoHIO_entry_c":35,
	"__global_destructor_chain":36,
	"lit_3620":37,
	"l_HIO":38,
	"data_80C4525C":39,
}

