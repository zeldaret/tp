#
# Generate By: dol2asm
# Module: 749
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_wara_howl",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_wara_howl",
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
	{'addr':0x80D63EC0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D63EEC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D63F18,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D63F38,'size':60,'pad':0,'label':"__ct__13daTagWrHowl_cFv",'name':"__ct__13daTagWrHowl_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D63F74,'size':96,'pad':0,'label':"__dt__13daTagWrHowl_cFv",'name':"__dt__13daTagWrHowl_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D63FD4,'size':88,'pad':0,'label':"create__13daTagWrHowl_cFv",'name':"create__13daTagWrHowl_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6402C,'size':8,'pad':0,'label':"Delete__13daTagWrHowl_cFv",'name':"Delete__13daTagWrHowl_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D64034,'size':8,'pad':0,'label':"draw__13daTagWrHowl_cFv",'name':"draw__13daTagWrHowl_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D6403C,'size':84,'pad':0,'label':"execute__13daTagWrHowl_cFv",'name':"execute__13daTagWrHowl_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64090,'size':36,'pad':0,'label':"init__13daTagWrHowl_cFv",'name':"init__13daTagWrHowl_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D640B4,'size':144,'pad':0,'label':"chkWlfInTag__13daTagWrHowl_cFv",'name':"chkWlfInTag__13daTagWrHowl_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64144,'size':84,'pad':0,'label':"daTagWrHowl_create__FP13daTagWrHowl_c",'name':"daTagWrHowl_create__FP13daTagWrHowl_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64198,'size':32,'pad':0,'label':"daTagWrHowl_Delete__FP13daTagWrHowl_c",'name':"daTagWrHowl_Delete__FP13daTagWrHowl_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D641B8,'size':32,'pad':0,'label':"daTagWrHowl_execute__FP13daTagWrHowl_c",'name':"daTagWrHowl_execute__FP13daTagWrHowl_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D641D8,'size':32,'pad':0,'label':"daTagWrHowl_draw__FP13daTagWrHowl_c",'name':"daTagWrHowl_draw__FP13daTagWrHowl_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D641F8,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D641FC,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D64200,'size':4,'pad':0,'label':"lit_3680",'name':"@3680",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D64204,'size':32,'pad':0,'label':"daTagWrHowl_METHODS",'name':"daTagWrHowl_METHODS",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D64224,'size':48,'pad':0,'label':"g_profile_Tag_WaraHowl",'name':"g_profile_Tag_WaraHowl",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D64254,'size':12,'pad':0,'label':"__vt__13daTagWrHowl_c",'name':"__vt__13daTagWrHowl_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__ct__13daTagWrHowl_cFv":3,
	"__dt__13daTagWrHowl_cFv":4,
	"create__13daTagWrHowl_cFv":5,
	"Delete__13daTagWrHowl_cFv":6,
	"draw__13daTagWrHowl_cFv":7,
	"execute__13daTagWrHowl_cFv":8,
	"init__13daTagWrHowl_cFv":9,
	"chkWlfInTag__13daTagWrHowl_cFv":10,
	"daTagWrHowl_create__FP13daTagWrHowl_c":11,
	"daTagWrHowl_Delete__FP13daTagWrHowl_c":12,
	"daTagWrHowl_execute__FP13daTagWrHowl_c":13,
	"daTagWrHowl_draw__FP13daTagWrHowl_c":14,
	"_ctors":15,
	"_dtors":16,
	"lit_3680":17,
	"daTagWrHowl_METHODS":18,
	"g_profile_Tag_WaraHowl":19,
	"__vt__13daTagWrHowl_c":20,
}

