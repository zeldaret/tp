#
# Generate By: dol2asm
# Module: 740
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_setrestart",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_setrestart",
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
	{'addr':0x80D60380,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D603AC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D603D8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D603F8,'size':148,'pad':0,'label':"Create__14daTagRestart_cFv",'name':"Create__14daTagRestart_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6048C,'size':148,'pad':0,'label':"create__14daTagRestart_cFv",'name':"create__14daTagRestart_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D60520,'size':60,'pad':0,'label':"__dt__4cXyzFv",'name':"__dt__4cXyzFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6055C,'size':4,'pad':0,'label':"__ct__4cXyzFv",'name':"__ct__4cXyzFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D60560,'size':484,'pad':0,'label':"execute__14daTagRestart_cFv",'name':"execute__14daTagRestart_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D60744,'size':8,'pad':0,'label':"_delete__14daTagRestart_cFv",'name':"_delete__14daTagRestart_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D6074C,'size':32,'pad':0,'label':"daTagRestart_Execute__FP14daTagRestart_c",'name':"daTagRestart_Execute__FP14daTagRestart_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6076C,'size':32,'pad':0,'label':"daTagRestart_Delete__FP14daTagRestart_c",'name':"daTagRestart_Delete__FP14daTagRestart_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6078C,'size':32,'pad':0,'label':"daTagRestart_Create__FP10fopAc_ac_c",'name':"daTagRestart_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D607AC,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D607B0,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D607B4,'size':4,'pad':0,'label':"lit_3650",'name':"@3650",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D607B8,'size':4,'pad':0,'label':"lit_3651",'name':"@3651",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D607BC,'size':4,'pad':0,'label':"lit_3652",'name':"@3652",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D607C0,'size':32,'pad':0,'label':"l_daTagRestart_Method",'name':"l_daTagRestart_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D607E0,'size':48,'pad':0,'label':"g_profile_Tag_Restart",'name':"g_profile_Tag_Restart",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"Create__14daTagRestart_cFv":3,
	"create__14daTagRestart_cFv":4,
	"__dt__4cXyzFv":5,
	"__ct__4cXyzFv":6,
	"execute__14daTagRestart_cFv":7,
	"_delete__14daTagRestart_cFv":8,
	"daTagRestart_Execute__FP14daTagRestart_c":9,
	"daTagRestart_Delete__FP14daTagRestart_c":10,
	"daTagRestart_Create__FP10fopAc_ac_c":11,
	"_ctors":12,
	"_dtors":13,
	"lit_3650":14,
	"lit_3651":15,
	"lit_3652":16,
	"l_daTagRestart_Method":17,
	"g_profile_Tag_Restart":18,
}

