#
# Generate By: dol2asm
# Module: 198
#

# Libraries
LIBRARIES = [
	"d/a/e/d_a_e_hb_leaf",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_e_hb_leaf",
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
	{'addr':0x806DFEE0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x806DFF0C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x806DFF38,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x806DFF58,'size':104,'pad':0,'label':"daE_HB_LEAF_Draw__FP15e_hb_leaf_class",'name':"daE_HB_LEAF_Draw__FP15e_hb_leaf_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x806DFFC0,'size':224,'pad':0,'label':"daE_HB_LEAF_Execute__FP15e_hb_leaf_class",'name':"daE_HB_LEAF_Execute__FP15e_hb_leaf_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x806E00A0,'size':8,'pad':0,'label':"daE_HB_LEAF_IsDelete__FP15e_hb_leaf_class",'name':"daE_HB_LEAF_IsDelete__FP15e_hb_leaf_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x806E00A8,'size':48,'pad':0,'label':"daE_HB_LEAF_Delete__FP15e_hb_leaf_class",'name':"daE_HB_LEAF_Delete__FP15e_hb_leaf_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x806E00D8,'size':256,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x806E01D8,'size':176,'pad':0,'label':"daE_HB_LEAF_Create__FP10fopAc_ac_c",'name':"daE_HB_LEAF_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x806E0288,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x806E028C,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x806E0290,'size':4,'pad':0,'label':"lit_3690",'name':"@3690",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x806E0294,'size':5,'pad':0,'label':"d_a_e_hb_leaf__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x806E029C,'size':32,'pad':0,'label':"l_daE_HB_LEAF_Method",'name':"l_daE_HB_LEAF_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x806E02BC,'size':48,'pad':0,'label':"g_profile_E_HB_LEAF",'name':"g_profile_E_HB_LEAF",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daE_HB_LEAF_Draw__FP15e_hb_leaf_class":3,
	"daE_HB_LEAF_Execute__FP15e_hb_leaf_class":4,
	"daE_HB_LEAF_IsDelete__FP15e_hb_leaf_class":5,
	"daE_HB_LEAF_Delete__FP15e_hb_leaf_class":6,
	"useHeapInit__FP10fopAc_ac_c":7,
	"daE_HB_LEAF_Create__FP10fopAc_ac_c":8,
	"_ctors":9,
	"_dtors":10,
	"lit_3690":11,
	"d_a_e_hb_leaf__stringBase0":12,
	"l_daE_HB_LEAF_Method":13,
	"g_profile_E_HB_LEAF":14,
}

