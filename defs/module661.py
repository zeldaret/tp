#
# Generate By: dol2asm
# Module: 661
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_tmoon",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_tmoon",
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
	{'addr':0x80D12B20,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12B4C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12B78,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12B98,'size':32,'pad':0,'label':"CheckCreateHeap__FP10fopAc_ac_c",'name':"CheckCreateHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12BB8,'size':60,'pad':0,'label':"initBaseMtx__12daObjTMoon_cFv",'name':"initBaseMtx__12daObjTMoon_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12BF4,'size':84,'pad':0,'label':"setBaseMtx__12daObjTMoon_cFv",'name':"setBaseMtx__12daObjTMoon_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12C48,'size':84,'pad':0,'label':"Create__12daObjTMoon_cFv",'name':"Create__12daObjTMoon_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12C9C,'size':112,'pad':0,'label':"CreateHeap__12daObjTMoon_cFv",'name':"CreateHeap__12daObjTMoon_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12D0C,'size':180,'pad':0,'label':"create__12daObjTMoon_cFv",'name':"create__12daObjTMoon_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12DC0,'size':244,'pad':0,'label':"execute__12daObjTMoon_cFv",'name':"execute__12daObjTMoon_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12EB4,'size':40,'pad':0,'label':"draw__12daObjTMoon_cFv",'name':"draw__12daObjTMoon_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12EDC,'size':52,'pad':0,'label':"_delete__12daObjTMoon_cFv",'name':"_delete__12daObjTMoon_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12F10,'size':32,'pad':0,'label':"daObjTMoon_Draw__FP12daObjTMoon_c",'name':"daObjTMoon_Draw__FP12daObjTMoon_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12F30,'size':32,'pad':0,'label':"daObjTMoon_Execute__FP12daObjTMoon_c",'name':"daObjTMoon_Execute__FP12daObjTMoon_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12F50,'size':32,'pad':0,'label':"daObjTMoon_Delete__FP12daObjTMoon_c",'name':"daObjTMoon_Delete__FP12daObjTMoon_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12F70,'size':32,'pad':0,'label':"daObjTMoon_Create__FP12daObjTMoon_c",'name':"daObjTMoon_Create__FP12daObjTMoon_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D12F90,'size':4,'pad':0,'label':"data_80D12F90",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D12F94,'size':4,'pad':0,'label':"data_80D12F94",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D12F98,'size':8,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D12FA0,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D12FA4,'size':32,'pad':0,'label':"l_daObjTMoon_Method",'name':"l_daObjTMoon_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D12FC4,'size':48,'pad':0,'label':"g_profile_Obj_TMoon",'name':"g_profile_Obj_TMoon",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"CheckCreateHeap__FP10fopAc_ac_c":3,
	"initBaseMtx__12daObjTMoon_cFv":4,
	"setBaseMtx__12daObjTMoon_cFv":5,
	"Create__12daObjTMoon_cFv":6,
	"CreateHeap__12daObjTMoon_cFv":7,
	"create__12daObjTMoon_cFv":8,
	"execute__12daObjTMoon_cFv":9,
	"draw__12daObjTMoon_cFv":10,
	"_delete__12daObjTMoon_cFv":11,
	"daObjTMoon_Draw__FP12daObjTMoon_c":12,
	"daObjTMoon_Execute__FP12daObjTMoon_c":13,
	"daObjTMoon_Delete__FP12daObjTMoon_c":14,
	"daObjTMoon_Create__FP12daObjTMoon_c":15,
	"data_80D12F90":16,
	"data_80D12F94":17,
	"stringBase0":18,
	"l_arcName":19,
	"l_daObjTMoon_Method":20,
	"g_profile_Obj_TMoon":21,
}

