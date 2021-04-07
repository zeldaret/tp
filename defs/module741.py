#
# Generate By: dol2asm
# Module: 741
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_shop_camera",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_shop_camera",
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
	{'addr':0x80D60820,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6084C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D60878,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D60898,'size':100,'pad':0,'label':"create__18daTag_ShopCamera_cFv",'name':"create__18daTag_ShopCamera_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D608FC,'size':8,'pad':0,'label':"Delete__18daTag_ShopCamera_cFv",'name':"Delete__18daTag_ShopCamera_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D60904,'size':8,'pad':0,'label':"Execute__18daTag_ShopCamera_cFv",'name':"Execute__18daTag_ShopCamera_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D6090C,'size':8,'pad':0,'label':"Draw__18daTag_ShopCamera_cFv",'name':"Draw__18daTag_ShopCamera_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D60914,'size':124,'pad':0,'label':"initialize__18daTag_ShopCamera_cFv",'name':"initialize__18daTag_ShopCamera_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D60990,'size':32,'pad':0,'label':"daTag_ShopCamera_Create__FPv",'name':"daTag_ShopCamera_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D609B0,'size':32,'pad':0,'label':"daTag_ShopCamera_Delete__FPv",'name':"daTag_ShopCamera_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D609D0,'size':32,'pad':0,'label':"daTag_ShopCamera_Execute__FPv",'name':"daTag_ShopCamera_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D609F0,'size':32,'pad':0,'label':"daTag_ShopCamera_Draw__FPv",'name':"daTag_ShopCamera_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D60A10,'size':8,'pad':0,'label':"daTag_ShopCamera_IsDelete__FPv",'name':"daTag_ShopCamera_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D60A18,'size':96,'pad':0,'label':"__dt__18daTag_ShopCamera_cFv",'name':"__dt__18daTag_ShopCamera_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D60A78,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D60A7C,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D60A80,'size':4,'pad':0,'label':"lit_3663",'name':"@3663",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D60A84,'size':4,'pad':0,'label':"lit_3664",'name':"@3664",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D60A88,'size':4,'pad':0,'label':"lit_3665",'name':"@3665",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D60A8C,'size':4,'pad':0,'label':"lit_3666",'name':"@3666",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D60A90,'size':32,'pad':0,'label':"daTag_ShopCamera_MethodTable",'name':"daTag_ShopCamera_MethodTable",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D60AB0,'size':48,'pad':0,'label':"g_profile_TAG_SHOPCAM",'name':"g_profile_TAG_SHOPCAM",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D60AE0,'size':12,'pad':0,'label':"__vt__18daTag_ShopCamera_c",'name':"__vt__18daTag_ShopCamera_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create__18daTag_ShopCamera_cFv":3,
	"Delete__18daTag_ShopCamera_cFv":4,
	"Execute__18daTag_ShopCamera_cFv":5,
	"Draw__18daTag_ShopCamera_cFv":6,
	"initialize__18daTag_ShopCamera_cFv":7,
	"daTag_ShopCamera_Create__FPv":8,
	"daTag_ShopCamera_Delete__FPv":9,
	"daTag_ShopCamera_Execute__FPv":10,
	"daTag_ShopCamera_Draw__FPv":11,
	"daTag_ShopCamera_IsDelete__FPv":12,
	"__dt__18daTag_ShopCamera_cFv":13,
	"_ctors":14,
	"_dtors":15,
	"lit_3663":16,
	"lit_3664":17,
	"lit_3665":18,
	"lit_3666":19,
	"daTag_ShopCamera_MethodTable":20,
	"g_profile_TAG_SHOPCAM":21,
	"__vt__18daTag_ShopCamera_c":22,
}

