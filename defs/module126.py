#
# Generate By: dol2asm
# Module: 126
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_hjump",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_hjump",
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
	{'addr':0x805A3A40,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A3A6C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A3A98,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A3AB8,'size':108,'pad':0,'label':"CreateHeap__12daTagHjump_cFv",'name':"CreateHeap__12daTagHjump_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A3B24,'size':604,'pad':0,'label':"create__12daTagHjump_cFv",'name':"create__12daTagHjump_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A3D80,'size':32,'pad':0,'label':"daTagHjump_Create__FP10fopAc_ac_c",'name':"daTagHjump_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A3DA0,'size':148,'pad':0,'label':"__dt__12daTagHjump_cFv",'name':"__dt__12daTagHjump_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A3E34,'size':60,'pad':0,'label':"daTagHjump_Delete__FP12daTagHjump_c",'name':"daTagHjump_Delete__FP12daTagHjump_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A3E70,'size':708,'pad':0,'label':"execute__12daTagHjump_cFv",'name':"execute__12daTagHjump_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4134,'size':32,'pad':0,'label':"daTagHjump_Execute__FP12daTagHjump_c",'name':"daTagHjump_Execute__FP12daTagHjump_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4154,'size':176,'pad':0,'label':"Draw__12daTagHjump_cFv",'name':"Draw__12daTagHjump_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4204,'size':44,'pad':0,'label':"daTagHjump_Draw__FP12daTagHjump_c",'name':"daTagHjump_Draw__FP12daTagHjump_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4230,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x805A4234,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x805A4238,'size':7,'pad':1,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A4240,'size':4,'pad':0,'label':"lit_3747",'name':"@3747",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A4244,'size':4,'pad':0,'label':"lit_3748",'name':"@3748",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A4248,'size':4,'pad':0,'label':"lit_3749",'name':"@3749",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A424C,'size':4,'pad':0,'label':"lit_3750",'name':"@3750",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A4250,'size':4,'pad':0,'label':"lit_3751",'name':"@3751",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A4254,'size':4,'pad':0,'label':"lit_3752",'name':"@3752",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A4258,'size':4,'pad':0,'label':"lit_3753",'name':"@3753",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A425C,'size':4,'pad':0,'label':"lit_3754",'name':"@3754",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A4260,'size':4,'pad':0,'label':"lit_3755",'name':"@3755",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A4264,'size':4,'pad':0,'label':"lit_3904",'name':"@3904",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A4268,'size':4,'pad':0,'label':"lit_3905",'name':"@3905",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A426C,'size':32,'pad':0,'label':"l_daTagHjump_Method",'name':"l_daTagHjump_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A428C,'size':48,'pad':0,'label':"g_profile_Tag_Hjump",'name':"g_profile_Tag_Hjump",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A42BC,'size':40,'pad':0,'label':"__vt__12daTagHjump_c",'name':"__vt__12daTagHjump_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"CreateHeap__12daTagHjump_cFv":3,
	"create__12daTagHjump_cFv":4,
	"daTagHjump_Create__FP10fopAc_ac_c":5,
	"__dt__12daTagHjump_cFv":6,
	"daTagHjump_Delete__FP12daTagHjump_c":7,
	"execute__12daTagHjump_cFv":8,
	"daTagHjump_Execute__FP12daTagHjump_c":9,
	"Draw__12daTagHjump_cFv":10,
	"daTagHjump_Draw__FP12daTagHjump_c":11,
	"_ctors":12,
	"_dtors":13,
	"l_arcName":14,
	"lit_3747":15,
	"lit_3748":16,
	"lit_3749":17,
	"lit_3750":18,
	"lit_3751":19,
	"lit_3752":20,
	"lit_3753":21,
	"lit_3754":22,
	"lit_3755":23,
	"lit_3904":24,
	"lit_3905":25,
	"l_daTagHjump_Method":26,
	"g_profile_Tag_Hjump":27,
	"__vt__12daTagHjump_c":28,
}

