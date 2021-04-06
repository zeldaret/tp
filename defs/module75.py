#
# Generate By: dol2asm
# Module: 75
#

# Libraries
LIBRARIES = [
	"d/a/kytag/d_a_kytag10",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_kytag10",
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
	{'addr':0x80528B80,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80528BAC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80528BD8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80528BF8,'size':276,'pad':0,'label':"get_rail_ratio_pos__FP5dPathifPsPs",'name':"get_rail_ratio_pos__FP5dPathifPsPs",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80528D0C,'size':72,'pad':0,'label':"set_path_info__FP10fopAc_ac_c",'name':"set_path_info__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80528D54,'size':16,'pad':0,'label':"get_Extent_pos_start_get__FP13kytag10_classP5dPathP4cXyzfPi",'name':"get_Extent_pos_start_get__FP13kytag10_classP5dPathP4cXyzfPi",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80528D64,'size':20,'pad':0,'label':"get_Extent_pos_end_get__FP13kytag10_classP5dPathP4cXyzfPi",'name':"get_Extent_pos_end_get__FP13kytag10_classP5dPathP4cXyzfPi",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80528D78,'size':976,'pad':0,'label':"sparks_move__FP13kytag10_class",'name':"sparks_move__FP13kytag10_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80529148,'size':8,'pad':0,'label':"daKytag10_Draw__FP13kytag10_class",'name':"daKytag10_Draw__FP13kytag10_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80529150,'size':36,'pad':0,'label':"daKytag10_Execute__FP13kytag10_class",'name':"daKytag10_Execute__FP13kytag10_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80529174,'size':8,'pad':0,'label':"daKytag10_IsDelete__FP13kytag10_class",'name':"daKytag10_IsDelete__FP13kytag10_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8052917C,'size':204,'pad':0,'label':"daKytag10_Delete__FP13kytag10_class",'name':"daKytag10_Delete__FP13kytag10_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80529248,'size':432,'pad':0,'label':"daKytag10_Create__FP10fopAc_ac_c",'name':"daKytag10_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805293F8,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x805293FC,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80529400,'size':4,'pad':0,'label':"lit_3788",'name':"@3788",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80529404,'size':4,'pad':0,'label':"lit_3950",'name':"@3950",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80529408,'size':4,'pad':4,'label':"lit_3951",'name':"@3951",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80529410,'size':8,'pad':0,'label':"lit_3952",'name':"@3952",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80529418,'size':8,'pad':0,'label':"lit_3953",'name':"@3953",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80529420,'size':8,'pad':0,'label':"lit_3954",'name':"@3954",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80529428,'size':4,'pad':0,'label':"lit_3955",'name':"@3955",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8052942C,'size':4,'pad':0,'label':"lit_3956",'name':"@3956",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80529430,'size':4,'pad':4,'label':"lit_3957",'name':"@3957",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80529438,'size':8,'pad':0,'label':"lit_3959",'name':"@3959",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80529440,'size':4,'pad':0,'label':"lit_3971",'name':"@3971",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80529444,'size':4,'pad':0,'label':"lit_4058",'name':"@4058",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80529448,'size':32,'pad':0,'label':"l_daKytag10_Method",'name':"l_daKytag10_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80529468,'size':48,'pad':0,'label':"g_profile_KYTAG10",'name':"g_profile_KYTAG10",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"get_rail_ratio_pos__FP5dPathifPsPs":3,
	"set_path_info__FP10fopAc_ac_c":4,
	"get_Extent_pos_start_get__FP13kytag10_classP5dPathP4cXyzfPi":5,
	"get_Extent_pos_end_get__FP13kytag10_classP5dPathP4cXyzfPi":6,
	"sparks_move__FP13kytag10_class":7,
	"daKytag10_Draw__FP13kytag10_class":8,
	"daKytag10_Execute__FP13kytag10_class":9,
	"daKytag10_IsDelete__FP13kytag10_class":10,
	"daKytag10_Delete__FP13kytag10_class":11,
	"daKytag10_Create__FP10fopAc_ac_c":12,
	"_ctors":13,
	"_dtors":14,
	"lit_3788":15,
	"lit_3950":16,
	"lit_3951":17,
	"lit_3952":18,
	"lit_3953":19,
	"lit_3954":20,
	"lit_3955":21,
	"lit_3956":22,
	"lit_3957":23,
	"lit_3959":24,
	"lit_3971":25,
	"lit_4058":26,
	"l_daKytag10_Method":27,
	"g_profile_KYTAG10":28,
}

