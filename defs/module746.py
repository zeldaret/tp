#
# Generate By: dol2asm
# Module: 746
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_ss_drink",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_ss_drink",
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
	{'addr':0x80D62D40,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D62D6C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D62D98,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D62DB8,'size':164,'pad':0,'label':"create__15daTag_SSDrink_cFv",'name':"create__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D62E5C,'size':8,'pad':0,'label':"Delete__15daTag_SSDrink_cFv",'name':"Delete__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D62E64,'size':108,'pad':0,'label':"Execute__15daTag_SSDrink_cFv",'name':"Execute__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D62ED0,'size':8,'pad':0,'label':"Draw__15daTag_SSDrink_cFv",'name':"Draw__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D62ED8,'size':168,'pad':0,'label':"getTypeFromParam__15daTag_SSDrink_cFv",'name':"getTypeFromParam__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D62F80,'size':12,'pad':0,'label':"getSwitchFromParam__15daTag_SSDrink_cFv",'name':"getSwitchFromParam__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D62F8C,'size':60,'pad':0,'label':"getFlowNodeNum__15daTag_SSDrink_cFv",'name':"getFlowNodeNum__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D62FC8,'size':12,'pad':0,'label':"getValue__15daTag_SSDrink_cFv",'name':"getValue__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D62FD4,'size':112,'pad':0,'label':"restart__15daTag_SSDrink_cFv",'name':"restart__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D63044,'size':120,'pad':0,'label':"initialize__15daTag_SSDrink_cFv",'name':"initialize__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D630BC,'size':44,'pad':0,'label':"checkProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i",'name':"checkProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D630E8,'size':236,'pad':0,'label':"setProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i",'name':"setProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D631D4,'size':52,'pad':0,'label':"setAttnPos__15daTag_SSDrink_cFv",'name':"setAttnPos__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D63208,'size':380,'pad':0,'label':"chkEvent__15daTag_SSDrink_cFv",'name':"chkEvent__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D63384,'size':268,'pad':0,'label':"orderEvent__15daTag_SSDrink_cFv",'name':"orderEvent__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D63490,'size':312,'pad':0,'label':"wait__15daTag_SSDrink_cFPv",'name':"wait__15daTag_SSDrink_cFPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D635C8,'size':212,'pad':0,'label':"talk__15daTag_SSDrink_cFPv",'name':"talk__15daTag_SSDrink_cFPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6369C,'size':32,'pad':0,'label':"daTag_SSDrink_Create__FPv",'name':"daTag_SSDrink_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D636BC,'size':32,'pad':0,'label':"daTag_SSDrink_Delete__FPv",'name':"daTag_SSDrink_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D636DC,'size':32,'pad':0,'label':"daTag_SSDrink_Execute__FPv",'name':"daTag_SSDrink_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D636FC,'size':32,'pad':0,'label':"daTag_SSDrink_Draw__FPv",'name':"daTag_SSDrink_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6371C,'size':8,'pad':0,'label':"daTag_SSDrink_IsDelete__FPv",'name':"daTag_SSDrink_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D63724,'size':112,'pad':0,'label':"__dt__15daTag_SSDrink_cFv",'name':"__dt__15daTag_SSDrink_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D63794,'size':4,'pad':0,'label':"setSoldOut__14daObj_SSBase_cFv",'name':"setSoldOut__14daObj_SSBase_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D63798,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D6379C,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D637A0,'size':4,'pad':0,'label':"lit_3843",'name':"@3843",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D637A4,'size':4,'pad':0,'label':"lit_3844",'name':"@3844",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D637A8,'size':4,'pad':0,'label':"lit_3845",'name':"@3845",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D637AC,'size':4,'pad':0,'label':"lit_3846",'name':"@3846",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D637B0,'size':4,'pad':0,'label':"lit_3947",'name':"@3947",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D637B4,'size':4,'pad':0,'label':"lit_3991",'name':"@3991",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D637B8,'size':4,'pad':0,'label':"lit_3992",'name':"@3992",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D637BC,'size':28,'pad':0,'label':"lit_3806",'name':"@3806",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D637D8,'size':12,'pad':0,'label':"lit_3829",'name':"@3829",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D637E4,'size':12,'pad':0,'label':"lit_3881",'name':"@3881",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D637F0,'size':12,'pad':0,'label':"lit_3889",'name':"@3889",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D637FC,'size':12,'pad':0,'label':"lit_4003",'name':"@4003",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D63808,'size':32,'pad':0,'label':"daTag_SSDrink_MethodTable",'name':"daTag_SSDrink_MethodTable",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D63828,'size':48,'pad':0,'label':"g_profile_TAG_SSDRINK",'name':"g_profile_TAG_SSDRINK",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D63858,'size':20,'pad':0,'label':"__vt__15daTag_SSDrink_c",'name':"__vt__15daTag_SSDrink_c",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create__15daTag_SSDrink_cFv":3,
	"Delete__15daTag_SSDrink_cFv":4,
	"Execute__15daTag_SSDrink_cFv":5,
	"Draw__15daTag_SSDrink_cFv":6,
	"getTypeFromParam__15daTag_SSDrink_cFv":7,
	"getSwitchFromParam__15daTag_SSDrink_cFv":8,
	"getFlowNodeNum__15daTag_SSDrink_cFv":9,
	"getValue__15daTag_SSDrink_cFv":10,
	"restart__15daTag_SSDrink_cFv":11,
	"initialize__15daTag_SSDrink_cFv":12,
	"checkProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i":13,
	"setProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i":14,
	"setAttnPos__15daTag_SSDrink_cFv":15,
	"chkEvent__15daTag_SSDrink_cFv":16,
	"orderEvent__15daTag_SSDrink_cFv":17,
	"wait__15daTag_SSDrink_cFPv":18,
	"talk__15daTag_SSDrink_cFPv":19,
	"daTag_SSDrink_Create__FPv":20,
	"daTag_SSDrink_Delete__FPv":21,
	"daTag_SSDrink_Execute__FPv":22,
	"daTag_SSDrink_Draw__FPv":23,
	"daTag_SSDrink_IsDelete__FPv":24,
	"__dt__15daTag_SSDrink_cFv":25,
	"setSoldOut__14daObj_SSBase_cFv":26,
	"_ctors":27,
	"_dtors":28,
	"lit_3843":29,
	"lit_3844":30,
	"lit_3845":31,
	"lit_3846":32,
	"lit_3947":33,
	"lit_3991":34,
	"lit_3992":35,
	"lit_3806":36,
	"lit_3829":37,
	"lit_3881":38,
	"lit_3889":39,
	"lit_4003":40,
	"daTag_SSDrink_MethodTable":41,
	"g_profile_TAG_SSDRINK":42,
	"__vt__15daTag_SSDrink_c":43,
}

