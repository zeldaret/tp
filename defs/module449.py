#
# Generate By: dol2asm
# Module: 449
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_flag",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_flag",
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
	{'addr':0x80BEB700,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEB72C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEB758,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEB778,'size':376,'pad':0,'label':"create_init__11daObjFlag_cFv",'name':"create_init__11daObjFlag_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEB8F0,'size':148,'pad':0,'label':"initBaseMtx__11daObjFlag_cFv",'name':"initBaseMtx__11daObjFlag_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEB984,'size':40,'pad':0,'label':"getJointAngle__11daObjFlag_cFP5csXyzi",'name':"getJointAngle__11daObjFlag_cFP5csXyzi",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEB9AC,'size':684,'pad':0,'label':"calcJointAngle__11daObjFlag_cFv",'name':"calcJointAngle__11daObjFlag_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEBC58,'size':340,'pad':0,'label':"calcAngleSwingZ__11daObjFlag_cFP11FlagJoint_cf",'name':"calcAngleSwingZ__11daObjFlag_cFP11FlagJoint_cf",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEBDAC,'size':184,'pad':0,'label':"calcAngleSwingX__11daObjFlag_cFP11FlagJoint_cf",'name':"calcAngleSwingX__11daObjFlag_cFP11FlagJoint_cf",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEBE64,'size':356,'pad':0,'label':"getSwingY__11daObjFlag_cFf",'name':"getSwingY__11daObjFlag_cFf",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEBFC8,'size':240,'pad':0,'label':"nodeCallBack__FP8J3DJointi",'name':"nodeCallBack__FP8J3DJointi",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEC0B8,'size':380,'pad':0,'label':"createSolidHeap__FP10fopAc_ac_c",'name':"createSolidHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEC234,'size':204,'pad':0,'label':"daObjFlag_Draw__FP11daObjFlag_c",'name':"daObjFlag_Draw__FP11daObjFlag_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEC300,'size':56,'pad':0,'label':"daObjFlag_Execute__FP11daObjFlag_c",'name':"daObjFlag_Execute__FP11daObjFlag_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEC338,'size':8,'pad':0,'label':"daObjFlag_IsDelete__FP11daObjFlag_c",'name':"daObjFlag_IsDelete__FP11daObjFlag_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80BEC340,'size':124,'pad':0,'label':"daObjFlag_Delete__FP11daObjFlag_c",'name':"daObjFlag_Delete__FP11daObjFlag_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEC3BC,'size':60,'pad':0,'label':"__dt__11FlagJoint_cFv",'name':"__dt__11FlagJoint_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEC3F8,'size':232,'pad':0,'label':"daObjFlag_Create__FP10fopAc_ac_c",'name':"daObjFlag_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BEC4E0,'size':4,'pad':0,'label':"__ct__11FlagJoint_cFv",'name':"__ct__11FlagJoint_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80BEC4E4,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80BEC4E8,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80BEC4EC,'size':52,'pad':0,'label':"M_attr__11daObjFlag_c",'name':"M_attr__11daObjFlag_c",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BEC520,'size':4,'pad':0,'label':"lit_3637",'name':"@3637",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BEC524,'size':8,'pad':0,'label':"lit_3639",'name':"@3639",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BEC52C,'size':4,'pad':0,'label':"lit_3759",'name':"@3759",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BEC530,'size':4,'pad':0,'label':"lit_3760",'name':"@3760",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BEC534,'size':4,'pad':0,'label':"lit_3761",'name':"@3761",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BEC538,'size':4,'pad':0,'label':"lit_3762",'name':"@3762",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BEC53C,'size':8,'pad':0,'label':"lit_3764",'name':"@3764",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BEC544,'size':4,'pad':0,'label':"lit_3791",'name':"@3791",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BEC548,'size':4,'pad':0,'label':"lit_3803",'name':"@3803",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BEC54C,'size':4,'pad':0,'label':"lit_3832",'name':"@3832",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BEC550,'size':4,'pad':0,'label':"lit_3833",'name':"@3833",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80BEC554,'size':41,'pad':0,'label':"d_a_obj_flag__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80BEC580,'size':32,'pad':0,'label':"l_daObjFlag_Method",'name':"l_daObjFlag_Method",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BEC5A0,'size':48,'pad':0,'label':"g_profile_Obj_Flag",'name':"g_profile_Obj_Flag",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create_init__11daObjFlag_cFv":3,
	"initBaseMtx__11daObjFlag_cFv":4,
	"getJointAngle__11daObjFlag_cFP5csXyzi":5,
	"calcJointAngle__11daObjFlag_cFv":6,
	"calcAngleSwingZ__11daObjFlag_cFP11FlagJoint_cf":7,
	"calcAngleSwingX__11daObjFlag_cFP11FlagJoint_cf":8,
	"getSwingY__11daObjFlag_cFf":9,
	"nodeCallBack__FP8J3DJointi":10,
	"createSolidHeap__FP10fopAc_ac_c":11,
	"daObjFlag_Draw__FP11daObjFlag_c":12,
	"daObjFlag_Execute__FP11daObjFlag_c":13,
	"daObjFlag_IsDelete__FP11daObjFlag_c":14,
	"daObjFlag_Delete__FP11daObjFlag_c":15,
	"__dt__11FlagJoint_cFv":16,
	"daObjFlag_Create__FP10fopAc_ac_c":17,
	"__ct__11FlagJoint_cFv":18,
	"_ctors":19,
	"_dtors":20,
	"M_attr__11daObjFlag_c":21,
	"lit_3637":22,
	"lit_3639":23,
	"lit_3759":24,
	"lit_3760":25,
	"lit_3761":26,
	"lit_3762":27,
	"lit_3764":28,
	"lit_3791":29,
	"lit_3803":30,
	"lit_3832":31,
	"lit_3833":32,
	"d_a_obj_flag__stringBase0":33,
	"l_daObjFlag_Method":34,
	"g_profile_Obj_Flag":35,
}

