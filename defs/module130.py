#
# Generate By: dol2asm
# Module: 130
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_mhint",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_mhint",
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
	{'addr':0x805A5640,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A566C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A5698,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A56B8,'size':528,'pad':0,'label':"create__12daTagMhint_cFv",'name':"create__12daTagMhint_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A58C8,'size':32,'pad':0,'label':"daTagMhint_Create__FP10fopAc_ac_c",'name':"daTagMhint_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A58E8,'size':100,'pad':0,'label':"__dt__12daTagMhint_cFv",'name':"__dt__12daTagMhint_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A594C,'size':40,'pad':0,'label':"daTagMhint_Delete__FP12daTagMhint_c",'name':"daTagMhint_Delete__FP12daTagMhint_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A5974,'size':368,'pad':0,'label':"eventOrder__12daTagMhint_cFv",'name':"eventOrder__12daTagMhint_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A5AE4,'size':1312,'pad':0,'label':"execute__12daTagMhint_cFv",'name':"execute__12daTagMhint_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A6004,'size':32,'pad':0,'label':"daTagMhint_Execute__FP12daTagMhint_c",'name':"daTagMhint_Execute__FP12daTagMhint_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A6024,'size':8,'pad':0,'label':"daTagMhint_Draw__FP12daTagMhint_c",'name':"daTagMhint_Draw__FP12daTagMhint_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x805A602C,'size':4,'pad':0,'label':"data_805A602C",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A6030,'size':4,'pad':0,'label':"data_805A6030",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A6034,'size':4,'pad':0,'label':"lit_3741",'name':"@3741",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A6038,'size':4,'pad':0,'label':"lit_3742",'name':"@3742",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A603C,'size':4,'pad':0,'label':"lit_3743",'name':"@3743",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A6040,'size':4,'pad':0,'label':"lit_3803",'name':"@3803",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A6044,'size':4,'pad':0,'label':"lit_3804",'name':"@3804",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A6048,'size':4,'pad':0,'label':"lit_3956",'name':"@3956",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A604C,'size':8,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x805A6054,'size':32,'pad':0,'label':"l_daTagMhint_Method",'name':"l_daTagMhint_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A6074,'size':48,'pad':0,'label':"g_profile_Tag_Mhint",'name':"g_profile_Tag_Mhint",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create__12daTagMhint_cFv":3,
	"daTagMhint_Create__FP10fopAc_ac_c":4,
	"__dt__12daTagMhint_cFv":5,
	"daTagMhint_Delete__FP12daTagMhint_c":6,
	"eventOrder__12daTagMhint_cFv":7,
	"execute__12daTagMhint_cFv":8,
	"daTagMhint_Execute__FP12daTagMhint_c":9,
	"daTagMhint_Draw__FP12daTagMhint_c":10,
	"data_805A602C":11,
	"data_805A6030":12,
	"lit_3741":13,
	"lit_3742":14,
	"lit_3743":15,
	"lit_3803":16,
	"lit_3804":17,
	"lit_3956":18,
	"stringBase0":19,
	"l_daTagMhint_Method":20,
	"g_profile_Tag_Mhint":21,
}

