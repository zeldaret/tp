#
# Generate By: dol2asm
# Module: 22
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_timer",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"unknown_translation_unit_bss",
	"d_a_obj_timer",
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
	{'addr':0x80485120,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048514C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80485178,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80485198,'size':212,'pad':0,'label':"_create__Q210daObjTimer5Act_cFv",'name':"_create__Q210daObjTimer5Act_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048526C,'size':8,'pad':0,'label':"_delete__Q210daObjTimer5Act_cFv",'name':"_delete__Q210daObjTimer5Act_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80485274,'size':16,'pad':0,'label':"mode_wait_init__Q210daObjTimer5Act_cFv",'name':"mode_wait_init__Q210daObjTimer5Act_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80485284,'size':92,'pad':0,'label':"mode_wait__Q210daObjTimer5Act_cFv",'name':"mode_wait__Q210daObjTimer5Act_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804852E0,'size':68,'pad':0,'label':"mode_count_init__Q210daObjTimer5Act_cFv",'name':"mode_count_init__Q210daObjTimer5Act_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80485324,'size':408,'pad':0,'label':"mode_count__Q210daObjTimer5Act_cFv",'name':"mode_count__Q210daObjTimer5Act_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804854BC,'size':232,'pad':0,'label':"_execute__Q210daObjTimer5Act_cFv",'name':"_execute__Q210daObjTimer5Act_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804855A4,'size':32,'pad':0,'label':"func_804855A4",'name':"Mthd_Create__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@FPv",'lib':-1,'tu':4,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804855C4,'size':36,'pad':0,'label':"func_804855C4",'name':"Mthd_Delete__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@FPv",'lib':-1,'tu':4,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804855E8,'size':36,'pad':0,'label':"func_804855E8",'name':"Mthd_Execute__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@FPv",'lib':-1,'tu':4,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048560C,'size':8,'pad':0,'label':"func_8048560C",'name':"Mthd_Draw__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@FPv",'lib':-1,'tu':4,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80485614,'size':8,'pad':0,'label':"func_80485614",'name':"Mthd_IsDelete__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@FPv",'lib':-1,'tu':4,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048561C,'size':28,'pad':0,'label':"func_8048561C",'name':"PrmAbstract<Q310daObjTimer5Act_c5Prm_e>__5daObjFPC10fopAc_ac_cQ310daObjTimer5Act_c5Prm_eQ310daObjTimer5Act_c5Prm_e",'lib':-1,'tu':4,'section':0,'class_template':True,'static':False,'is_reachable':False,'r':[5,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80485638,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8048563C,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80485640,'size':4,'pad':0,'label':"lit_3720",'name':"@3720",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80485644,'size':4,'pad':0,'label':"lit_3721",'name':"@3721",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80485648,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80485654,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80485668,'size':12,'pad':0,'label':"lit_3726",'name':"@3726",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80485674,'size':12,'pad':0,'label':"lit_3727",'name':"@3727",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80485680,'size':24,'pad':0,'label':"mode_proc",'name':"mode_proc$3725",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80485698,'size':32,'pad':0,'label':"data_80485698",'name':"Mthd_Table__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804856B8,'size':48,'pad':0,'label':"g_profile_Obj_Timer",'name':"g_profile_Obj_Timer",'lib':-1,'tu':4,'section':5,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804856E8,'size':4,'pad':0,'label':"data_804856E8",'name':None,'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"_create__Q210daObjTimer5Act_cFv":3,
	"_delete__Q210daObjTimer5Act_cFv":4,
	"mode_wait_init__Q210daObjTimer5Act_cFv":5,
	"mode_wait__Q210daObjTimer5Act_cFv":6,
	"mode_count_init__Q210daObjTimer5Act_cFv":7,
	"mode_count__Q210daObjTimer5Act_cFv":8,
	"_execute__Q210daObjTimer5Act_cFv":9,
	"func_804855A4":10,
	"func_804855C4":11,
	"func_804855E8":12,
	"func_8048560C":13,
	"func_80485614":14,
	"func_8048561C":15,
	"_ctors":16,
	"_dtors":17,
	"lit_3720":18,
	"lit_3721":19,
	"cNullVec__6Z2Calc":20,
	"lit_1787":21,
	"lit_3726":22,
	"lit_3727":23,
	"mode_proc":24,
	"data_80485698":25,
	"g_profile_Obj_Timer":26,
	"data_804856E8":27,
}

