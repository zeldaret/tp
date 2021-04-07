#
# Generate By: dol2asm
# Module: 457
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_gb",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_gb",
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
	{'addr':0x80BF62A0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BF62CC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BF62F8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BF6318,'size':224,'pad':0,'label':"daObj_Gb_Draw__FP12obj_gb_class",'name':"daObj_Gb_Draw__FP12obj_gb_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BF63F8,'size':916,'pad':0,'label':"daObj_Gb_Execute__FP12obj_gb_class",'name':"daObj_Gb_Execute__FP12obj_gb_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BF678C,'size':60,'pad':0,'label':"__dt__4cXyzFv",'name':"__dt__4cXyzFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BF67C8,'size':8,'pad':0,'label':"daObj_Gb_IsDelete__FP12obj_gb_class",'name':"daObj_Gb_IsDelete__FP12obj_gb_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80BF67D0,'size':92,'pad':0,'label':"daObj_Gb_Delete__FP12obj_gb_class",'name':"daObj_Gb_Delete__FP12obj_gb_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BF682C,'size':620,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BF6A98,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BF6AE0,'size':720,'pad':0,'label':"daObj_Gb_Create__FP10fopAc_ac_c",'name':"daObj_Gb_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BF6DB0,'size':4,'pad':0,'label':"__ct__4cXyzFv",'name':"__ct__4cXyzFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80BF6DB4,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80BF6DB8,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80BF6DBC,'size':4,'pad':0,'label':"lit_3890",'name':"@3890",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BF6DC0,'size':4,'pad':0,'label':"lit_3891",'name':"@3891",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BF6DC4,'size':4,'pad':0,'label':"lit_3892",'name':"@3892",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BF6DC8,'size':4,'pad':0,'label':"lit_3893",'name':"@3893",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BF6DCC,'size':4,'pad':0,'label':"lit_3894",'name':"@3894",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BF6DD0,'size':4,'pad':0,'label':"lit_3895",'name':"@3895",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BF6DD4,'size':4,'pad':0,'label':"lit_4083",'name':"@4083",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BF6DD8,'size':4,'pad':0,'label':"lit_4084",'name':"@4084",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BF6DDC,'size':4,'pad':0,'label':"lit_4085",'name':"@4085",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BF6DE0,'size':4,'pad':0,'label':"lit_4086",'name':"@4086",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BF6DE4,'size':8,'pad':0,'label':"lit_4088",'name':"@4088",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BF6DEC,'size':15,'pad':0,'label':"d_a_obj_gb__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80BF6DFC,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BF6E08,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BF6E1C,'size':8,'pad':0,'label':"bmd",'name':"bmd$3914",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BF6E24,'size':8,'pad':0,'label':"brk",'name':"brk$3915",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BF6E2C,'size':8,'pad':0,'label':"btk",'name':"btk$3916",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BF6E34,'size':8,'pad':0,'label':"dzb",'name':"dzb$3917",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BF6E3C,'size':32,'pad':0,'label':"l_daObj_Gb_Method",'name':"l_daObj_Gb_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BF6E5C,'size':48,'pad':0,'label':"g_profile_OBJ_GB",'name':"g_profile_OBJ_GB",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BF6E8C,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daObj_Gb_Draw__FP12obj_gb_class":3,
	"daObj_Gb_Execute__FP12obj_gb_class":4,
	"__dt__4cXyzFv":5,
	"daObj_Gb_IsDelete__FP12obj_gb_class":6,
	"daObj_Gb_Delete__FP12obj_gb_class":7,
	"useHeapInit__FP10fopAc_ac_c":8,
	"__dt__12J3DFrameCtrlFv":9,
	"daObj_Gb_Create__FP10fopAc_ac_c":10,
	"__ct__4cXyzFv":11,
	"_ctors":12,
	"_dtors":13,
	"lit_3890":14,
	"lit_3891":15,
	"lit_3892":16,
	"lit_3893":17,
	"lit_3894":18,
	"lit_3895":19,
	"lit_4083":20,
	"lit_4084":21,
	"lit_4085":22,
	"lit_4086":23,
	"lit_4088":24,
	"d_a_obj_gb__stringBase0":25,
	"cNullVec__6Z2Calc":26,
	"lit_1787":27,
	"bmd":28,
	"brk":29,
	"btk":30,
	"dzb":31,
	"l_daObj_Gb_Method":32,
	"g_profile_OBJ_GB":33,
	"__vt__12J3DFrameCtrl":34,
}

