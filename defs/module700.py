#
# Generate By: dol2asm
# Module: 700
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_zra_freeze",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_zra_freeze",
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
	{'addr':0x80D44040,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4406C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D44098,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D440B8,'size':108,'pad':0,'label':"setBaseMtx__13daZraFreeze_cFv",'name':"setBaseMtx__13daZraFreeze_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D44124,'size':376,'pad':0,'label':"chkActorInScreen__13daZraFreeze_cFv",'name':"chkActorInScreen__13daZraFreeze_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4429C,'size':32,'pad':0,'label':"createSolidHeap__FP10fopAc_ac_c",'name':"createSolidHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D442BC,'size':384,'pad':0,'label':"Create__13daZraFreeze_cFv",'name':"Create__13daZraFreeze_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4443C,'size':132,'pad':0,'label':"CreateHeap__13daZraFreeze_cFv",'name':"CreateHeap__13daZraFreeze_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D444C0,'size':472,'pad':0,'label':"setHitodamaPrtcl__13daZraFreeze_cFv",'name':"setHitodamaPrtcl__13daZraFreeze_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D44698,'size':840,'pad':0,'label':"Execute__13daZraFreeze_cFv",'name':"Execute__13daZraFreeze_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D449E0,'size':164,'pad':0,'label':"Draw__13daZraFreeze_cFv",'name':"Draw__13daZraFreeze_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D44A84,'size':52,'pad':0,'label':"Delete__13daZraFreeze_cFv",'name':"Delete__13daZraFreeze_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D44AB8,'size':32,'pad':0,'label':"daZraFreeze_Draw__FP13daZraFreeze_c",'name':"daZraFreeze_Draw__FP13daZraFreeze_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D44AD8,'size':32,'pad':0,'label':"daZraFreeze_Execute__FP13daZraFreeze_c",'name':"daZraFreeze_Execute__FP13daZraFreeze_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D44AF8,'size':8,'pad':0,'label':"daZraFreeze_IsDelete__FP13daZraFreeze_c",'name':"daZraFreeze_IsDelete__FP13daZraFreeze_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D44B00,'size':32,'pad':0,'label':"daZraFreeze_Delete__FP13daZraFreeze_c",'name':"daZraFreeze_Delete__FP13daZraFreeze_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D44B20,'size':32,'pad':0,'label':"daZraFreeze_create__FP10fopAc_ac_c",'name':"daZraFreeze_create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D44B40,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D44B44,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D44B48,'size':8,'pad':0,'label':"l_DATA",'name':"l_DATA",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D44B50,'size':4,'pad':0,'label':"lit_3763",'name':"@3763",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D44B54,'size':4,'pad':0,'label':"lit_3764",'name':"@3764",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D44B58,'size':4,'pad':0,'label':"lit_3765",'name':"@3765",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D44B5C,'size':4,'pad':0,'label':"lit_3840",'name':"@3840",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D44B60,'size':4,'pad':0,'label':"id",'name':"id$3856",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D44B64,'size':4,'pad':0,'label':"lit_3917",'name':"@3917",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D44B68,'size':4,'pad':0,'label':"lit_3918",'name':"@3918",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D44B6C,'size':4,'pad':0,'label':"lit_3919",'name':"@3919",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D44B70,'size':8,'pad':0,'label':"lit_4050",'name':"@4050",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D44B78,'size':8,'pad':0,'label':"lit_4051",'name':"@4051",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D44B80,'size':8,'pad':0,'label':"lit_4052",'name':"@4052",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D44B88,'size':59,'pad':0,'label':"d_a_obj_zra_freeze__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D44BC4,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D44BC8,'size':12,'pad':0,'label':"l_bmdName",'name':"l_bmdName$3845",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D44BD4,'size':32,'pad':0,'label':"l_daZraFreeze_Method",'name':"l_daZraFreeze_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D44BF4,'size':48,'pad':0,'label':"g_profile_OBJ_ZRAFREEZE",'name':"g_profile_OBJ_ZRAFREEZE",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"setBaseMtx__13daZraFreeze_cFv":3,
	"chkActorInScreen__13daZraFreeze_cFv":4,
	"createSolidHeap__FP10fopAc_ac_c":5,
	"Create__13daZraFreeze_cFv":6,
	"CreateHeap__13daZraFreeze_cFv":7,
	"setHitodamaPrtcl__13daZraFreeze_cFv":8,
	"Execute__13daZraFreeze_cFv":9,
	"Draw__13daZraFreeze_cFv":10,
	"Delete__13daZraFreeze_cFv":11,
	"daZraFreeze_Draw__FP13daZraFreeze_c":12,
	"daZraFreeze_Execute__FP13daZraFreeze_c":13,
	"daZraFreeze_IsDelete__FP13daZraFreeze_c":14,
	"daZraFreeze_Delete__FP13daZraFreeze_c":15,
	"daZraFreeze_create__FP10fopAc_ac_c":16,
	"_ctors":17,
	"_dtors":18,
	"l_DATA":19,
	"lit_3763":20,
	"lit_3764":21,
	"lit_3765":22,
	"lit_3840":23,
	"id":24,
	"lit_3917":25,
	"lit_3918":26,
	"lit_3919":27,
	"lit_4050":28,
	"lit_4051":29,
	"lit_4052":30,
	"d_a_obj_zra_freeze__stringBase0":31,
	"l_arcName":32,
	"l_bmdName":33,
	"l_daZraFreeze_Method":34,
	"g_profile_OBJ_ZRAFREEZE":35,
}

