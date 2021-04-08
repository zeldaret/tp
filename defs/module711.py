#
# Generate By: dol2asm
# Module: 711
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_Lv7Gate",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_Lv7Gate",
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
	{'addr':0x80D50A40,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D50A6C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D50A98,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D50AB8,'size':324,'pad':0,'label':"createSolidHeap__FP10fopAc_ac_c",'name':"createSolidHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D50BFC,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D50C44,'size':32,'pad':0,'label':"daTagLv7Gate_Create__FP10fopAc_ac_c",'name':"daTagLv7Gate_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D50C64,'size':204,'pad':0,'label':"create__14daTagLv7Gate_cFv",'name':"create__14daTagLv7Gate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D50D30,'size':1144,'pad':0,'label':"create_init__14daTagLv7Gate_cFv",'name':"create_init__14daTagLv7Gate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D511A8,'size':32,'pad':0,'label':"daTagLv7Gate_Execute__FP14daTagLv7Gate_c",'name':"daTagLv7Gate_Execute__FP14daTagLv7Gate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D511C8,'size':1120,'pad':0,'label':"execute__14daTagLv7Gate_cFv",'name':"execute__14daTagLv7Gate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D51628,'size':916,'pad':0,'label':"calcFly__14daTagLv7Gate_cFv",'name':"calcFly__14daTagLv7Gate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D519BC,'size':156,'pad':0,'label':"daTagLv7Gate_Draw__FP14daTagLv7Gate_c",'name':"daTagLv7Gate_Draw__FP14daTagLv7Gate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D51A58,'size':8,'pad':0,'label':"daTagLv7Gate_IsDelete__FP14daTagLv7Gate_c",'name':"daTagLv7Gate_IsDelete__FP14daTagLv7Gate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D51A60,'size':108,'pad':0,'label':"daTagLv7Gate_Delete__FP14daTagLv7Gate_c",'name':"daTagLv7Gate_Delete__FP14daTagLv7Gate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D51ACC,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D51AD0,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D51AD4,'size':4,'pad':0,'label':"lit_3698",'name':"@3698",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D51AD8,'size':4,'pad':0,'label':"lit_3829",'name':"@3829",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D51ADC,'size':4,'pad':4,'label':"lit_3935",'name':"@3935",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D51AE4,'size':8,'pad':0,'label':"lit_3936",'name':"@3936",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D51AEC,'size':8,'pad':0,'label':"lit_3937",'name':"@3937",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D51AF4,'size':8,'pad':0,'label':"lit_3938",'name':"@3938",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D51AFC,'size':4,'pad':0,'label':"lit_3939",'name':"@3939",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D51B00,'size':4,'pad':0,'label':"lit_3940",'name':"@3940",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D51B04,'size':4,'pad':0,'label':"lit_3941",'name':"@3941",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D51B08,'size':4,'pad':0,'label':"lit_3942",'name':"@3942",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D51B0C,'size':4,'pad':0,'label':"lit_4046",'name':"@4046",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D51B10,'size':4,'pad':0,'label':"lit_4047",'name':"@4047",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D51B14,'size':57,'pad':0,'label':"d_a_tag_Lv7Gate__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D51B50,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[5,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D51B54,'size':32,'pad':0,'label':"l_daTagLv7Gate_Method",'name':"l_daTagLv7Gate_Method",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D51B74,'size':48,'pad':0,'label':"g_profile_Tag_Lv7Gate",'name':"g_profile_Tag_Lv7Gate",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D51BA4,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"createSolidHeap__FP10fopAc_ac_c":3,
	"__dt__12J3DFrameCtrlFv":4,
	"daTagLv7Gate_Create__FP10fopAc_ac_c":5,
	"create__14daTagLv7Gate_cFv":6,
	"create_init__14daTagLv7Gate_cFv":7,
	"daTagLv7Gate_Execute__FP14daTagLv7Gate_c":8,
	"execute__14daTagLv7Gate_cFv":9,
	"calcFly__14daTagLv7Gate_cFv":10,
	"daTagLv7Gate_Draw__FP14daTagLv7Gate_c":11,
	"daTagLv7Gate_IsDelete__FP14daTagLv7Gate_c":12,
	"daTagLv7Gate_Delete__FP14daTagLv7Gate_c":13,
	"_ctors":14,
	"_dtors":15,
	"lit_3698":16,
	"lit_3829":17,
	"lit_3935":18,
	"lit_3936":19,
	"lit_3937":20,
	"lit_3938":21,
	"lit_3939":22,
	"lit_3940":23,
	"lit_3941":24,
	"lit_3942":25,
	"lit_4046":26,
	"lit_4047":27,
	"d_a_tag_Lv7Gate__stringBase0":28,
	"l_arcName":29,
	"l_daTagLv7Gate_Method":30,
	"g_profile_Tag_Lv7Gate":31,
	"__vt__12J3DFrameCtrl":32,
}

