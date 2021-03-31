#
# Generate By: dol2asm
# Module: 44
#

# Libraries
LIBRARIES = [
	"d/a/d_a_vrbox2",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_vrbox2",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".dtors",
	".rodata",
	".data",
	".bss",
]

# Symbols
SYMBOLS = [
	{'addr':0x80498A00,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80498A2C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80498A58,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80498A78,'size':84,'pad':0,'label':"texScrollCheck__FRf",'name':"texScrollCheck__FRf",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80498ACC,'size':1552,'pad':0,'label':"daVrbox2_Draw__FP12vrbox2_class",'name':"daVrbox2_Draw__FP12vrbox2_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804990DC,'size':1804,'pad':0,'label':"daVrbox2_color_set__FP12vrbox2_class",'name':"daVrbox2_color_set__FP12vrbox2_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804997E8,'size':68,'pad':0,'label':"daVrbox2_Execute__FP12vrbox2_class",'name':"daVrbox2_Execute__FP12vrbox2_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8049982C,'size':8,'pad':0,'label':"daVrbox2_IsDelete__FP12vrbox2_class",'name':"daVrbox2_IsDelete__FP12vrbox2_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80499834,'size':8,'pad':0,'label':"daVrbox2_Delete__FP12vrbox2_class",'name':"daVrbox2_Delete__FP12vrbox2_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8049983C,'size':316,'pad':0,'label':"daVrbox2_solidHeapCB__FP10fopAc_ac_c",'name':"daVrbox2_solidHeapCB__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80499978,'size':164,'pad':0,'label':"daVrbox2_Create__FP10fopAc_ac_c",'name':"daVrbox2_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80499A1C,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80499A64,'size':4,'pad':0,'label':"data_80499A64",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80499A68,'size':4,'pad':0,'label':"data_80499A68",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80499A6C,'size':4,'pad':0,'label':"lit_3627",'name':"@3627",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499A70,'size':4,'pad':0,'label':"lit_3628",'name':"@3628",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80499A74,'size':4,'pad':0,'label':"lit_3835",'name':"@3835",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499A78,'size':4,'pad':0,'label':"lit_3836",'name':"@3836",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499A7C,'size':4,'pad':0,'label':"lit_3837",'name':"@3837",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499A80,'size':4,'pad':0,'label':"lit_3838",'name':"@3838",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499A84,'size':4,'pad':0,'label':"lit_3839",'name':"@3839",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499A88,'size':4,'pad':0,'label':"lit_3840",'name':"@3840",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499A8C,'size':4,'pad':0,'label':"lit_3841",'name':"@3841",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499A90,'size':4,'pad':0,'label':"lit_3842",'name':"@3842",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499A94,'size':4,'pad':0,'label':"lit_3843",'name':"@3843",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499A98,'size':4,'pad':0,'label':"lit_3844",'name':"@3844",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499A9C,'size':4,'pad':0,'label':"lit_3845",'name':"@3845",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499AA0,'size':4,'pad':0,'label':"lit_3846",'name':"@3846",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499AA4,'size':4,'pad':0,'label':"lit_4069",'name':"@4069",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499AA8,'size':4,'pad':0,'label':"lit_4070",'name':"@4070",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499AAC,'size':4,'pad':0,'label':"lit_4071",'name':"@4071",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499AB0,'size':4,'pad':0,'label':"lit_4072",'name':"@4072",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499AB4,'size':4,'pad':0,'label':"lit_4073",'name':"@4073",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499AB8,'size':4,'pad':0,'label':"lit_4074",'name':"@4074",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499ABC,'size':4,'pad':0,'label':"lit_4075",'name':"@4075",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499AC0,'size':4,'pad':0,'label':"lit_4076",'name':"@4076",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80499AC4,'size':84,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80499B18,'size':32,'pad':0,'label':"l_daVrbox2_Method",'name':"l_daVrbox2_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80499B38,'size':48,'pad':0,'label':"g_profile_VRBOX2",'name':"g_profile_VRBOX2",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80499B68,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80499B78,'size':2,'pad':2,'label':"mangZ",'name':"mangZ$3688",'lib':-1,'tu':3,'section':5,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"texScrollCheck__FRf":3,
	"daVrbox2_Draw__FP12vrbox2_class":4,
	"daVrbox2_color_set__FP12vrbox2_class":5,
	"daVrbox2_Execute__FP12vrbox2_class":6,
	"daVrbox2_IsDelete__FP12vrbox2_class":7,
	"daVrbox2_Delete__FP12vrbox2_class":8,
	"daVrbox2_solidHeapCB__FP10fopAc_ac_c":9,
	"daVrbox2_Create__FP10fopAc_ac_c":10,
	"__dt__12J3DFrameCtrlFv":11,
	"data_80499A64":12,
	"data_80499A68":13,
	"lit_3627":14,
	"lit_3628":15,
	"lit_3835":16,
	"lit_3836":17,
	"lit_3837":18,
	"lit_3838":19,
	"lit_3839":20,
	"lit_3840":21,
	"lit_3841":22,
	"lit_3842":23,
	"lit_3843":24,
	"lit_3844":25,
	"lit_3845":26,
	"lit_3846":27,
	"lit_4069":28,
	"lit_4070":29,
	"lit_4071":30,
	"lit_4072":31,
	"lit_4073":32,
	"lit_4074":33,
	"lit_4075":34,
	"lit_4076":35,
	"stringBase0":36,
	"l_daVrbox2_Method":37,
	"g_profile_VRBOX2":38,
	"__vt__12J3DFrameCtrl":39,
	"mangZ":40,
}

