#
# Generate By: dol2asm
# Module: 725
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_lightball",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_lightball",
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
	{'addr':0x80D5A780,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5A7AC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5A7D8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5A7F8,'size':32,'pad':0,'label':"initBaseMtx__16daTagLightBall_cFv",'name':"initBaseMtx__16daTagLightBall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5A818,'size':88,'pad':0,'label':"setBaseMtx__16daTagLightBall_cFv",'name':"setBaseMtx__16daTagLightBall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5A870,'size':328,'pad':0,'label':"Create__16daTagLightBall_cFv",'name':"Create__16daTagLightBall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5A9B8,'size':104,'pad':0,'label':"create__16daTagLightBall_cFv",'name':"create__16daTagLightBall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5AA20,'size':384,'pad':0,'label':"execute__16daTagLightBall_cFv",'name':"execute__16daTagLightBall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5ABA0,'size':8,'pad':0,'label':"draw__16daTagLightBall_cFv",'name':"draw__16daTagLightBall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D5ABA8,'size':72,'pad':0,'label':"_delete__16daTagLightBall_cFv",'name':"_delete__16daTagLightBall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5ABF0,'size':32,'pad':0,'label':"daTagLightBall_Draw__FP16daTagLightBall_c",'name':"daTagLightBall_Draw__FP16daTagLightBall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5AC10,'size':32,'pad':0,'label':"daTagLightBall_Execute__FP16daTagLightBall_c",'name':"daTagLightBall_Execute__FP16daTagLightBall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5AC30,'size':32,'pad':0,'label':"daTagLightBall_Delete__FP16daTagLightBall_c",'name':"daTagLightBall_Delete__FP16daTagLightBall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5AC50,'size':32,'pad':0,'label':"daTagLightBall_Create__FP10fopAc_ac_c",'name':"daTagLightBall_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D5AC70,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D5AC74,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D5AC78,'size':4,'pad':0,'label':"lit_3682",'name':"@3682",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D5AC7C,'size':32,'pad':0,'label':"l_daTagLightBall_Method",'name':"l_daTagLightBall_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D5AC9C,'size':48,'pad':0,'label':"g_profile_Tag_LightBall",'name':"g_profile_Tag_LightBall",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__16daTagLightBall_cFv":3,
	"setBaseMtx__16daTagLightBall_cFv":4,
	"Create__16daTagLightBall_cFv":5,
	"create__16daTagLightBall_cFv":6,
	"execute__16daTagLightBall_cFv":7,
	"draw__16daTagLightBall_cFv":8,
	"_delete__16daTagLightBall_cFv":9,
	"daTagLightBall_Draw__FP16daTagLightBall_c":10,
	"daTagLightBall_Execute__FP16daTagLightBall_c":11,
	"daTagLightBall_Delete__FP16daTagLightBall_c":12,
	"daTagLightBall_Create__FP10fopAc_ac_c":13,
	"_ctors":14,
	"_dtors":15,
	"lit_3682":16,
	"l_daTagLightBall_Method":17,
	"g_profile_Tag_LightBall":18,
}

