#
# Generate By: dol2asm
# Module: 623
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_smoke",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_smoke",
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
	{'addr':0x80CDCE00,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDCE2C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDCE58,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDCE78,'size':32,'pad':0,'label':"initBaseMtx__12daObjSmoke_cFv",'name':"initBaseMtx__12daObjSmoke_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDCE98,'size':88,'pad':0,'label':"setBaseMtx__12daObjSmoke_cFv",'name':"setBaseMtx__12daObjSmoke_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDCEF0,'size':172,'pad':0,'label':"Create__12daObjSmoke_cFv",'name':"Create__12daObjSmoke_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDCF9C,'size':104,'pad':0,'label':"create__12daObjSmoke_cFv",'name':"create__12daObjSmoke_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDD004,'size':180,'pad':0,'label':"execute__12daObjSmoke_cFv",'name':"execute__12daObjSmoke_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDD0B8,'size':64,'pad':0,'label':"_delete__12daObjSmoke_cFv",'name':"_delete__12daObjSmoke_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDD0F8,'size':32,'pad':0,'label':"daObjSmoke_Execute__FP12daObjSmoke_c",'name':"daObjSmoke_Execute__FP12daObjSmoke_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDD118,'size':32,'pad':0,'label':"daObjSmoke_Delete__FP12daObjSmoke_c",'name':"daObjSmoke_Delete__FP12daObjSmoke_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDD138,'size':32,'pad':0,'label':"daObjSmoke_Create__FP10fopAc_ac_c",'name':"daObjSmoke_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CDD158,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CDD15C,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CDD160,'size':4,'pad':0,'label':"lit_3655",'name':"@3655",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80CDD164,'size':32,'pad':0,'label':"l_daObjSmoke_Method",'name':"l_daObjSmoke_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CDD184,'size':48,'pad':0,'label':"g_profile_Obj_Smoke",'name':"g_profile_Obj_Smoke",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__12daObjSmoke_cFv":3,
	"setBaseMtx__12daObjSmoke_cFv":4,
	"Create__12daObjSmoke_cFv":5,
	"create__12daObjSmoke_cFv":6,
	"execute__12daObjSmoke_cFv":7,
	"_delete__12daObjSmoke_cFv":8,
	"daObjSmoke_Execute__FP12daObjSmoke_c":9,
	"daObjSmoke_Delete__FP12daObjSmoke_c":10,
	"daObjSmoke_Create__FP10fopAc_ac_c":11,
	"_ctors":12,
	"_dtors":13,
	"lit_3655":14,
	"l_daObjSmoke_Method":15,
	"g_profile_Obj_Smoke":16,
}

