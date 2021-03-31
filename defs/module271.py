#
# Generate By: dol2asm
# Module: 271
#

# Libraries
LIBRARIES = [
	"d/a/kytag/d_a_kytag08",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_kytag08",
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
	{'addr':0x8085A500,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8085A52C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8085A558,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8085A578,'size':8,'pad':0,'label':"daKytag08_Draw__FP13kytag08_class",'name':"daKytag08_Draw__FP13kytag08_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8085A580,'size':2336,'pad':0,'label':"daKytag08_Execute__FP13kytag08_class",'name':"daKytag08_Execute__FP13kytag08_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8085AEA0,'size':8,'pad':0,'label':"daKytag08_IsDelete__FP13kytag08_class",'name':"daKytag08_IsDelete__FP13kytag08_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8085AEA8,'size':204,'pad':0,'label':"daKytag08_Delete__FP13kytag08_class",'name':"daKytag08_Delete__FP13kytag08_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8085AF74,'size':120,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8085AFEC,'size':592,'pad':0,'label':"daKytag08_Create__FP10fopAc_ac_c",'name':"daKytag08_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8085B23C,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8085B284,'size':4,'pad':0,'label':"data_8085B284",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8085B288,'size':4,'pad':0,'label':"data_8085B288",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8085B28C,'size':4,'pad':0,'label':"lit_4012",'name':"@4012",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B290,'size':4,'pad':0,'label':"lit_4013",'name':"@4013",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8085B294,'size':8,'pad':0,'label':"lit_4014",'name':"@4014",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8085B29C,'size':8,'pad':0,'label':"lit_4015",'name':"@4015",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8085B2A4,'size':8,'pad':0,'label':"lit_4016",'name':"@4016",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8085B2AC,'size':4,'pad':0,'label':"lit_4017",'name':"@4017",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2B0,'size':4,'pad':0,'label':"lit_4018",'name':"@4018",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2B4,'size':4,'pad':0,'label':"lit_4019",'name':"@4019",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2B8,'size':4,'pad':0,'label':"lit_4020",'name':"@4020",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2BC,'size':4,'pad':0,'label':"lit_4021",'name':"@4021",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2C0,'size':4,'pad':0,'label':"lit_4022",'name':"@4022",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2C4,'size':4,'pad':0,'label':"lit_4023",'name':"@4023",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2C8,'size':4,'pad':0,'label':"lit_4024",'name':"@4024",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2CC,'size':4,'pad':0,'label':"lit_4025",'name':"@4025",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2D0,'size':4,'pad':0,'label':"lit_4026",'name':"@4026",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2D4,'size':4,'pad':0,'label':"lit_4027",'name':"@4027",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2D8,'size':4,'pad':0,'label':"lit_4028",'name':"@4028",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2DC,'size':4,'pad':0,'label':"lit_4029",'name':"@4029",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2E0,'size':4,'pad':0,'label':"lit_4030",'name':"@4030",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2E4,'size':4,'pad':0,'label':"lit_4031",'name':"@4031",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2E8,'size':4,'pad':0,'label':"lit_4032",'name':"@4032",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2EC,'size':4,'pad':0,'label':"lit_4033",'name':"@4033",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2F0,'size':4,'pad':0,'label':"lit_4034",'name':"@4034",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2F4,'size':4,'pad':0,'label':"lit_4035",'name':"@4035",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2F8,'size':4,'pad':0,'label':"lit_4036",'name':"@4036",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B2FC,'size':4,'pad':0,'label':"lit_4037",'name':"@4037",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B300,'size':4,'pad':0,'label':"lit_4038",'name':"@4038",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B304,'size':4,'pad':0,'label':"lit_4039",'name':"@4039",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B308,'size':4,'pad':0,'label':"lit_4040",'name':"@4040",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B30C,'size':4,'pad':0,'label':"lit_4041",'name':"@4041",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8085B310,'size':8,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x8085B318,'size':32,'pad':0,'label':"l_daKytag08_Method",'name':"l_daKytag08_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8085B338,'size':48,'pad':0,'label':"g_profile_KYTAG08",'name':"g_profile_KYTAG08",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8085B368,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daKytag08_Draw__FP13kytag08_class":3,
	"daKytag08_Execute__FP13kytag08_class":4,
	"daKytag08_IsDelete__FP13kytag08_class":5,
	"daKytag08_Delete__FP13kytag08_class":6,
	"useHeapInit__FP10fopAc_ac_c":7,
	"daKytag08_Create__FP10fopAc_ac_c":8,
	"__dt__12J3DFrameCtrlFv":9,
	"data_8085B284":10,
	"data_8085B288":11,
	"lit_4012":12,
	"lit_4013":13,
	"lit_4014":14,
	"lit_4015":15,
	"lit_4016":16,
	"lit_4017":17,
	"lit_4018":18,
	"lit_4019":19,
	"lit_4020":20,
	"lit_4021":21,
	"lit_4022":22,
	"lit_4023":23,
	"lit_4024":24,
	"lit_4025":25,
	"lit_4026":26,
	"lit_4027":27,
	"lit_4028":28,
	"lit_4029":29,
	"lit_4030":30,
	"lit_4031":31,
	"lit_4032":32,
	"lit_4033":33,
	"lit_4034":34,
	"lit_4035":35,
	"lit_4036":36,
	"lit_4037":37,
	"lit_4038":38,
	"lit_4039":39,
	"lit_4040":40,
	"lit_4041":41,
	"stringBase0":42,
	"l_daKytag08_Method":43,
	"g_profile_KYTAG08":44,
	"__vt__12J3DFrameCtrl":45,
}

