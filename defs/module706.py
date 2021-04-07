#
# Generate By: dol2asm
# Module: 706
#

# Libraries
LIBRARIES = [
	"d/a/d_a_startAndGoal",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_startAndGoal",
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
	{'addr':0x80D4D740,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D76C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D798,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D7B8,'size':148,'pad':0,'label':"chkPassed2__21daStartAndGoal_Path_cF4cXyz",'name':"chkPassed2__21daStartAndGoal_Path_cF4cXyz",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D84C,'size':56,'pad':0,'label':"getType__16daStartAndGoal_cFv",'name':"getType__16daStartAndGoal_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D884,'size':164,'pad':0,'label':"Create__16daStartAndGoal_cFv",'name':"Create__16daStartAndGoal_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D928,'size':112,'pad':0,'label':"__dt__21daStartAndGoal_Path_cFv",'name':"__dt__21daStartAndGoal_Path_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D998,'size':208,'pad':0,'label':"init__16daStartAndGoal_cFv",'name':"init__16daStartAndGoal_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DA68,'size':200,'pad':0,'label':"actorPosCheck__16daStartAndGoal_cFv",'name':"actorPosCheck__16daStartAndGoal_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DB30,'size':124,'pad':0,'label':"readyStartTimer__16daStartAndGoal_cFv",'name':"readyStartTimer__16daStartAndGoal_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,2],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DBAC,'size':36,'pad':0,'label':"isStartCheck__16daStartAndGoal_cFv",'name':"isStartCheck__16daStartAndGoal_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,2],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DBD0,'size':128,'pad':0,'label':"isReadyCheck__16daStartAndGoal_cFv",'name':"isReadyCheck__16daStartAndGoal_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DC50,'size':164,'pad':0,'label':"Execute__16daStartAndGoal_cFv",'name':"Execute__16daStartAndGoal_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DCF4,'size':8,'pad':0,'label':"Draw__16daStartAndGoal_cFv",'name':"Draw__16daStartAndGoal_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D4DCFC,'size':132,'pad':0,'label':"Delete__16daStartAndGoal_cFv",'name':"Delete__16daStartAndGoal_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DD80,'size':32,'pad':0,'label':"daStartAndGoal_Execute__FP16daStartAndGoal_c",'name':"daStartAndGoal_Execute__FP16daStartAndGoal_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DDA0,'size':32,'pad':0,'label':"daStartAndGoal_Draw__FP16daStartAndGoal_c",'name':"daStartAndGoal_Draw__FP16daStartAndGoal_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DDC0,'size':8,'pad':0,'label':"daStartAndGoal_IsDelete__FP16daStartAndGoal_c",'name':"daStartAndGoal_IsDelete__FP16daStartAndGoal_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D4DDC8,'size':32,'pad':0,'label':"daStartAndGoal_Delete__FP16daStartAndGoal_c",'name':"daStartAndGoal_Delete__FP16daStartAndGoal_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DDE8,'size':32,'pad':0,'label':"daStartAndGoal_create__FP10fopAc_ac_c",'name':"daStartAndGoal_create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DE08,'size':96,'pad':0,'label':"__dt__13daNpcF_Path_cFv",'name':"__dt__13daNpcF_Path_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DE68,'size':72,'pad':0,'label':"__dt__16daNpcF_SPCurve_cFv",'name':"__dt__16daNpcF_SPCurve_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4DEB0,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D4DEB4,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D4DEB8,'size':1,'pad':3,'label':"l_DATA",'name':"l_DATA",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4DEBC,'size':4,'pad':0,'label':"lit_3913",'name':"@3913",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D4DEC0,'size':4,'pad':0,'label':"lit_3914",'name':"@3914",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D4DEC4,'size':4,'pad':0,'label':"lit_3915",'name':"@3915",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D4DEC8,'size':4,'pad':0,'label':"lit_3916",'name':"@3916",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D4DECC,'size':24,'pad':0,'label':"l_timerType",'name':"l_timerType",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4DEE4,'size':32,'pad':0,'label':"l_daStartAndGoal_Method",'name':"l_daStartAndGoal_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4DF04,'size':48,'pad':0,'label':"g_profile_START_AND_GOAL",'name':"g_profile_START_AND_GOAL",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4DF34,'size':12,'pad':0,'label':"__vt__21daStartAndGoal_Path_c",'name':"__vt__21daStartAndGoal_Path_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D4DF40,'size':12,'pad':0,'label':"__vt__16daNpcF_SPCurve_c",'name':"__vt__16daNpcF_SPCurve_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D4DF4C,'size':12,'pad':0,'label':"__vt__13daNpcF_Path_c",'name':"__vt__13daNpcF_Path_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"chkPassed2__21daStartAndGoal_Path_cF4cXyz":3,
	"getType__16daStartAndGoal_cFv":4,
	"Create__16daStartAndGoal_cFv":5,
	"__dt__21daStartAndGoal_Path_cFv":6,
	"init__16daStartAndGoal_cFv":7,
	"actorPosCheck__16daStartAndGoal_cFv":8,
	"readyStartTimer__16daStartAndGoal_cFv":9,
	"isStartCheck__16daStartAndGoal_cFv":10,
	"isReadyCheck__16daStartAndGoal_cFv":11,
	"Execute__16daStartAndGoal_cFv":12,
	"Draw__16daStartAndGoal_cFv":13,
	"Delete__16daStartAndGoal_cFv":14,
	"daStartAndGoal_Execute__FP16daStartAndGoal_c":15,
	"daStartAndGoal_Draw__FP16daStartAndGoal_c":16,
	"daStartAndGoal_IsDelete__FP16daStartAndGoal_c":17,
	"daStartAndGoal_Delete__FP16daStartAndGoal_c":18,
	"daStartAndGoal_create__FP10fopAc_ac_c":19,
	"__dt__13daNpcF_Path_cFv":20,
	"__dt__16daNpcF_SPCurve_cFv":21,
	"_ctors":22,
	"_dtors":23,
	"l_DATA":24,
	"lit_3913":25,
	"lit_3914":26,
	"lit_3915":27,
	"lit_3916":28,
	"l_timerType":29,
	"l_daStartAndGoal_Method":30,
	"g_profile_START_AND_GOAL":31,
	"__vt__21daStartAndGoal_Path_c":32,
	"__vt__16daNpcF_SPCurve_c":33,
	"__vt__13daNpcF_Path_c":34,
}

