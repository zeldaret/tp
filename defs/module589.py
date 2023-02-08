#
# Generate By: dol2asm
# Module: 589
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_pdoor",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"unknown_translation_unit_bss",
	"d_a_obj_pdoor",
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
	{'addr':0x80CA9E20,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA9E4C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA9E78,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA9E98,'size':260,'pad':0,'label':"PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel",'name':"PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA9F9C,'size':60,'pad':0,'label':"initBaseMtx__12daObjPDoor_cFv",'name':"initBaseMtx__12daObjPDoor_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CA9FD8,'size':100,'pad':0,'label':"setBaseMtx__12daObjPDoor_cFv",'name':"setBaseMtx__12daObjPDoor_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAA03C,'size':272,'pad':0,'label':"Create__12daObjPDoor_cFv",'name':"Create__12daObjPDoor_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAA14C,'size':112,'pad':0,'label':"CreateHeap__12daObjPDoor_cFv",'name':"CreateHeap__12daObjPDoor_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAA1BC,'size':128,'pad':0,'label':"create1st__12daObjPDoor_cFv",'name':"create1st__12daObjPDoor_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAA23C,'size':84,'pad':0,'label':"Execute__12daObjPDoor_cFPPA3_A4_f",'name':"Execute__12daObjPDoor_cFPPA3_A4_f",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAA290,'size':140,'pad':0,'label':"mode_proc_call__12daObjPDoor_cFv",'name':"mode_proc_call__12daObjPDoor_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAA31C,'size':56,'pad':0,'label':"init_modeWait__12daObjPDoor_cFv",'name':"init_modeWait__12daObjPDoor_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAA354,'size':836,'pad':0,'label':"modeWait__12daObjPDoor_cFv",'name':"modeWait__12daObjPDoor_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAA698,'size':28,'pad':0,'label':"init_modeRotate__12daObjPDoor_cFv",'name':"init_modeRotate__12daObjPDoor_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAA6B4,'size':692,'pad':0,'label':"modeRotate__12daObjPDoor_cFv",'name':"modeRotate__12daObjPDoor_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAA968,'size':164,'pad':0,'label':"Draw__12daObjPDoor_cFv",'name':"Draw__12daObjPDoor_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAAA0C,'size':64,'pad':0,'label':"Delete__12daObjPDoor_cFv",'name':"Delete__12daObjPDoor_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAAA4C,'size':96,'pad':0,'label':"daObjPDoor_create1st__FP12daObjPDoor_c",'name':"daObjPDoor_create1st__FP12daObjPDoor_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAAAAC,'size':32,'pad':0,'label':"daObjPDoor_MoveBGDelete__FP12daObjPDoor_c",'name':"daObjPDoor_MoveBGDelete__FP12daObjPDoor_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAAACC,'size':32,'pad':0,'label':"daObjPDoor_MoveBGExecute__FP12daObjPDoor_c",'name':"daObjPDoor_MoveBGExecute__FP12daObjPDoor_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAAAEC,'size':44,'pad':0,'label':"daObjPDoor_MoveBGDraw__FP12daObjPDoor_c",'name':"daObjPDoor_MoveBGDraw__FP12daObjPDoor_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAAB18,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CAAB1C,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CAAB20,'size':4,'pad':0,'label':"lit_3695",'name':"@3695",'lib':-1,'tu':4,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CAAB24,'size':4,'pad':0,'label':"lit_3942",'name':"@3942",'lib':-1,'tu':4,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CAAB28,'size':8,'pad':0,'label':"lit_3944",'name':"@3944",'lib':-1,'tu':4,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CAAB30,'size':4,'pad':0,'label':"lit_4051",'name':"@4051",'lib':-1,'tu':4,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CAAB34,'size':4,'pad':0,'label':"lit_4052",'name':"@4052",'lib':-1,'tu':4,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CAAB38,'size':4,'pad':0,'label':"lit_4053",'name':"@4053",'lib':-1,'tu':4,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CAAB3C,'size':4,'pad':0,'label':"lit_4054",'name':"@4054",'lib':-1,'tu':4,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CAAB40,'size':10,'pad':0,'label':"d_a_obj_pdoor__stringBase0",'name':"@stringBase0",'lib':-1,'tu':4,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80CAAB4C,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CAAB58,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':4,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CAAB6C,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':4,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CAAB70,'size':24,'pad':0,'label':"l_cull_box",'name':"l_cull_box",'lib':-1,'tu':4,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CAAB88,'size':12,'pad':0,'label':"lit_3781",'name':"@3781",'lib':-1,'tu':4,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CAAB94,'size':12,'pad':0,'label':"lit_3782",'name':"@3782",'lib':-1,'tu':4,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CAABA0,'size':24,'pad':0,'label':"l_func",'name':"l_func$3780",'lib':-1,'tu':4,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CAABB8,'size':32,'pad':0,'label':"daObjPDoor_METHODS",'name':"daObjPDoor_METHODS",'lib':-1,'tu':4,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CAABD8,'size':48,'pad':0,'label':"g_profile_Obj_PushDoor",'name':"g_profile_Obj_PushDoor",'lib':-1,'tu':4,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CAAC08,'size':40,'pad':0,'label':"__vt__12daObjPDoor_c",'name':"__vt__12daObjPDoor_c",'lib':-1,'tu':4,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CAAC30,'size':4,'pad':0,'label':"data_80CAAC30",'name':None,'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel":3,
	"initBaseMtx__12daObjPDoor_cFv":4,
	"setBaseMtx__12daObjPDoor_cFv":5,
	"Create__12daObjPDoor_cFv":6,
	"CreateHeap__12daObjPDoor_cFv":7,
	"create1st__12daObjPDoor_cFv":8,
	"Execute__12daObjPDoor_cFPPA3_A4_f":9,
	"mode_proc_call__12daObjPDoor_cFv":10,
	"init_modeWait__12daObjPDoor_cFv":11,
	"modeWait__12daObjPDoor_cFv":12,
	"init_modeRotate__12daObjPDoor_cFv":13,
	"modeRotate__12daObjPDoor_cFv":14,
	"Draw__12daObjPDoor_cFv":15,
	"Delete__12daObjPDoor_cFv":16,
	"daObjPDoor_create1st__FP12daObjPDoor_c":17,
	"daObjPDoor_MoveBGDelete__FP12daObjPDoor_c":18,
	"daObjPDoor_MoveBGExecute__FP12daObjPDoor_c":19,
	"daObjPDoor_MoveBGDraw__FP12daObjPDoor_c":20,
	"_ctors":21,
	"_dtors":22,
	"lit_3695":23,
	"lit_3942":24,
	"lit_3944":25,
	"lit_4051":26,
	"lit_4052":27,
	"lit_4053":28,
	"lit_4054":29,
	"d_a_obj_pdoor__stringBase0":30,
	"cNullVec__6Z2Calc":31,
	"lit_1787":32,
	"l_arcName":33,
	"l_cull_box":34,
	"lit_3781":35,
	"lit_3782":36,
	"l_func":37,
	"daObjPDoor_METHODS":38,
	"g_profile_Obj_PushDoor":39,
	"__vt__12daObjPDoor_c":40,
	"data_80CAAC30":41,
}

