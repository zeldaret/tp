#
# Generate By: dol2asm
# Module: 752
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_wljump",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_wljump",
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
	{'addr':0x80D64E40,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64E6C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64E98,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64EB8,'size':300,'pad':0,'label':"create__13daTagWljump_cFv",'name':"create__13daTagWljump_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64FE4,'size':32,'pad':0,'label':"daTagWljump_Create__FP10fopAc_ac_c",'name':"daTagWljump_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D65004,'size':100,'pad':0,'label':"__dt__13daTagWljump_cFv",'name':"__dt__13daTagWljump_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D65068,'size':40,'pad':0,'label':"daTagWljump_Delete__FP13daTagWljump_c",'name':"daTagWljump_Delete__FP13daTagWljump_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D65090,'size':2028,'pad':0,'label':"execute__13daTagWljump_cFv",'name':"execute__13daTagWljump_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6587C,'size':32,'pad':0,'label':"daTagWljump_Execute__FP13daTagWljump_c",'name':"daTagWljump_Execute__FP13daTagWljump_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6589C,'size':8,'pad':0,'label':"draw__13daTagWljump_cFv",'name':"draw__13daTagWljump_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D658A4,'size':32,'pad':0,'label':"daTagWljump_Draw__FP13daTagWljump_c",'name':"daTagWljump_Draw__FP13daTagWljump_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D658C4,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D658C8,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D658CC,'size':4,'pad':0,'label':"lit_4044",'name':"@4044",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D658D0,'size':4,'pad':0,'label':"lit_4045",'name':"@4045",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D658D4,'size':4,'pad':4,'label':"lit_4046",'name':"@4046",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D658DC,'size':8,'pad':0,'label':"lit_4047",'name':"@4047",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D658E4,'size':8,'pad':0,'label':"lit_4048",'name':"@4048",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D658EC,'size':8,'pad':0,'label':"lit_4049",'name':"@4049",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D658F4,'size':4,'pad':0,'label':"lit_4050",'name':"@4050",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D658F8,'size':4,'pad':0,'label':"lit_4051",'name':"@4051",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D658FC,'size':4,'pad':4,'label':"lit_4052",'name':"@4052",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D65904,'size':8,'pad':0,'label':"lit_4054",'name':"@4054",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D6590C,'size':8,'pad':0,'label':"lit_4055",'name':"@4055",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D65914,'size':32,'pad':0,'label':"l_daTagWljump_Method",'name':"l_daTagWljump_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D65934,'size':48,'pad':0,'label':"g_profile_Tag_Wljump",'name':"g_profile_Tag_Wljump",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create__13daTagWljump_cFv":3,
	"daTagWljump_Create__FP10fopAc_ac_c":4,
	"__dt__13daTagWljump_cFv":5,
	"daTagWljump_Delete__FP13daTagWljump_c":6,
	"execute__13daTagWljump_cFv":7,
	"daTagWljump_Execute__FP13daTagWljump_c":8,
	"draw__13daTagWljump_cFv":9,
	"daTagWljump_Draw__FP13daTagWljump_c":10,
	"_ctors":11,
	"_dtors":12,
	"lit_4044":13,
	"lit_4045":14,
	"lit_4046":15,
	"lit_4047":16,
	"lit_4048":17,
	"lit_4049":18,
	"lit_4050":19,
	"lit_4051":20,
	"lit_4052":21,
	"lit_4054":22,
	"lit_4055":23,
	"l_daTagWljump_Method":24,
	"g_profile_Tag_Wljump":25,
}

