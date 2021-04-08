#
# Generate By: dol2asm
# Module: 591
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_pdwall",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_pdwall",
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
	{'addr':0x80CAC780,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAC7AC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAC7D8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAC7F8,'size':228,'pad':0,'label':"create1st__13daObjPDwall_cFv",'name':"create1st__13daObjPDwall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAC8DC,'size':360,'pad':0,'label':"setMtx__13daObjPDwall_cFv",'name':"setMtx__13daObjPDwall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CACA44,'size':356,'pad':0,'label':"CreateHeap__13daObjPDwall_cFv",'name':"CreateHeap__13daObjPDwall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CACBA8,'size':312,'pad':0,'label':"Create__13daObjPDwall_cFv",'name':"Create__13daObjPDwall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CACCE0,'size':564,'pad':0,'label':"Execute__13daObjPDwall_cFPPA3_A4_f",'name':"Execute__13daObjPDwall_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CACF14,'size':192,'pad':0,'label':"Draw__13daObjPDwall_cFv",'name':"Draw__13daObjPDwall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CACFD4,'size':160,'pad':0,'label':"Delete__13daObjPDwall_cFv",'name':"Delete__13daObjPDwall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAD074,'size':96,'pad':0,'label':"daObjPDwall_create1st__FP13daObjPDwall_c",'name':"daObjPDwall_create1st__FP13daObjPDwall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAD0D4,'size':32,'pad':0,'label':"daObjPDwall_MoveBGDelete__FP13daObjPDwall_c",'name':"daObjPDwall_MoveBGDelete__FP13daObjPDwall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAD0F4,'size':32,'pad':0,'label':"daObjPDwall_MoveBGExecute__FP13daObjPDwall_c",'name':"daObjPDwall_MoveBGExecute__FP13daObjPDwall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAD114,'size':44,'pad':0,'label':"daObjPDwall_MoveBGDraw__FP13daObjPDwall_c",'name':"daObjPDwall_MoveBGDraw__FP13daObjPDwall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAD140,'size':112,'pad':0,'label':"__dt__13daObjPDwall_cFv",'name':"__dt__13daObjPDwall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CAD1B0,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CAD1B4,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CAD1B8,'size':24,'pad':0,'label':"l_cull_box",'name':"l_cull_box",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CAD1D0,'size':4,'pad':0,'label':"lit_3666",'name':"@3666",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CAD1D4,'size':4,'pad':0,'label':"lit_3667",'name':"@3667",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CAD1D8,'size':8,'pad':0,'label':"lit_3669",'name':"@3669",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CAD1E0,'size':4,'pad':0,'label':"lit_3731",'name':"@3731",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CAD1E4,'size':4,'pad':0,'label':"lit_3787",'name':"@3787",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CAD1E8,'size':4,'pad':0,'label':"lit_3788",'name':"@3788",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CAD1EC,'size':4,'pad':0,'label':"lit_3789",'name':"@3789",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CAD1F0,'size':4,'pad':0,'label':"lit_3790",'name':"@3790",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CAD1F4,'size':8,'pad':0,'label':"d_a_obj_pdwall__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80CAD1FC,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CAD200,'size':32,'pad':0,'label':"daObjPDwall_METHODS",'name':"daObjPDwall_METHODS",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CAD220,'size':48,'pad':0,'label':"g_profile_Obj_PDwall",'name':"g_profile_Obj_PDwall",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CAD250,'size':44,'pad':0,'label':"__vt__13daObjPDwall_c",'name':"__vt__13daObjPDwall_c",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create1st__13daObjPDwall_cFv":3,
	"setMtx__13daObjPDwall_cFv":4,
	"CreateHeap__13daObjPDwall_cFv":5,
	"Create__13daObjPDwall_cFv":6,
	"Execute__13daObjPDwall_cFPPA3_A4_f":7,
	"Draw__13daObjPDwall_cFv":8,
	"Delete__13daObjPDwall_cFv":9,
	"daObjPDwall_create1st__FP13daObjPDwall_c":10,
	"daObjPDwall_MoveBGDelete__FP13daObjPDwall_c":11,
	"daObjPDwall_MoveBGExecute__FP13daObjPDwall_c":12,
	"daObjPDwall_MoveBGDraw__FP13daObjPDwall_c":13,
	"__dt__13daObjPDwall_cFv":14,
	"_ctors":15,
	"_dtors":16,
	"l_cull_box":17,
	"lit_3666":18,
	"lit_3667":19,
	"lit_3669":20,
	"lit_3731":21,
	"lit_3787":22,
	"lit_3788":23,
	"lit_3789":24,
	"lit_3790":25,
	"d_a_obj_pdwall__stringBase0":26,
	"l_arcName":27,
	"daObjPDwall_METHODS":28,
	"g_profile_Obj_PDwall":29,
	"__vt__13daObjPDwall_c":30,
}

