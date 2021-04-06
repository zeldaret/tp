#
# Generate By: dol2asm
# Module: 744
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_spinner",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_spinner",
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
	{'addr':0x80D61680,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D616AC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D616D8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D616F8,'size':32,'pad':0,'label':"CheckCreateHeap__FP10fopAc_ac_c",'name':"CheckCreateHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D61718,'size':396,'pad':0,'label':"search_spinner_sub__FPvPv",'name':"search_spinner_sub__FPvPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D618A4,'size':32,'pad':0,'label':"initBaseMtx__14daTagSpinner_cFv",'name':"initBaseMtx__14daTagSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D618C4,'size':88,'pad':0,'label':"setBaseMtx__14daTagSpinner_cFv",'name':"setBaseMtx__14daTagSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6191C,'size':80,'pad':0,'label':"Create__14daTagSpinner_cFv",'name':"Create__14daTagSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6196C,'size':8,'pad':0,'label':"CreateHeap__14daTagSpinner_cFv",'name':"CreateHeap__14daTagSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D61974,'size':140,'pad':0,'label':"create__14daTagSpinner_cFv",'name':"create__14daTagSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D61A00,'size':180,'pad':0,'label':"execute__14daTagSpinner_cFv",'name':"execute__14daTagSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D61AB4,'size':8,'pad':0,'label':"_delete__14daTagSpinner_cFv",'name':"_delete__14daTagSpinner_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D61ABC,'size':32,'pad':0,'label':"daTagSpinner_Execute__FP14daTagSpinner_c",'name':"daTagSpinner_Execute__FP14daTagSpinner_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D61ADC,'size':32,'pad':0,'label':"daTagSpinner_Delete__FP14daTagSpinner_c",'name':"daTagSpinner_Delete__FP14daTagSpinner_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D61AFC,'size':32,'pad':0,'label':"daTagSpinner_Create__FP10fopAc_ac_c",'name':"daTagSpinner_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D61B1C,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D61B20,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D61B24,'size':4,'pad':4,'label':"lit_3689",'name':"@3689",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D61B2C,'size':8,'pad':0,'label':"lit_3690",'name':"@3690",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D61B34,'size':8,'pad':0,'label':"lit_3691",'name':"@3691",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D61B3C,'size':8,'pad':0,'label':"lit_3692",'name':"@3692",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D61B44,'size':4,'pad':0,'label':"lit_3715",'name':"@3715",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D61B48,'size':32,'pad':0,'label':"l_daTagSpinner_Method",'name':"l_daTagSpinner_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D61B68,'size':48,'pad':0,'label':"g_profile_Tag_Spinner",'name':"g_profile_Tag_Spinner",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"CheckCreateHeap__FP10fopAc_ac_c":3,
	"search_spinner_sub__FPvPv":4,
	"initBaseMtx__14daTagSpinner_cFv":5,
	"setBaseMtx__14daTagSpinner_cFv":6,
	"Create__14daTagSpinner_cFv":7,
	"CreateHeap__14daTagSpinner_cFv":8,
	"create__14daTagSpinner_cFv":9,
	"execute__14daTagSpinner_cFv":10,
	"_delete__14daTagSpinner_cFv":11,
	"daTagSpinner_Execute__FP14daTagSpinner_c":12,
	"daTagSpinner_Delete__FP14daTagSpinner_c":13,
	"daTagSpinner_Create__FP10fopAc_ac_c":14,
	"_ctors":15,
	"_dtors":16,
	"lit_3689":17,
	"lit_3690":18,
	"lit_3691":19,
	"lit_3692":20,
	"lit_3715":21,
	"l_daTagSpinner_Method":22,
	"g_profile_Tag_Spinner":23,
}

