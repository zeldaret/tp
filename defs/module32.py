#
# Generate By: dol2asm
# Module: 32
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_evtarea",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_evtarea",
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
	{'addr':0x8048C480,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C4AC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C4D8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C4F8,'size':560,'pad':0,'label':"create__15daTag_EvtArea_cFv",'name':"create__15daTag_EvtArea_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C728,'size':8,'pad':0,'label':"Delete__15daTag_EvtArea_cFv",'name':"Delete__15daTag_EvtArea_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048C730,'size':356,'pad':0,'label':"Execute__15daTag_EvtArea_cFv",'name':"Execute__15daTag_EvtArea_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C894,'size':8,'pad':0,'label':"Draw__15daTag_EvtArea_cFv",'name':"Draw__15daTag_EvtArea_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048C89C,'size':176,'pad':0,'label':"isDelete__15daTag_EvtArea_cFv",'name':"isDelete__15daTag_EvtArea_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C94C,'size':820,'pad':0,'label':"chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz",'name':"chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz",'lib':-1,'tu':3,'section':0,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,16],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048CC80,'size':32,'pad':0,'label':"daTag_EvtArea_Create__FPv",'name':"daTag_EvtArea_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048CCA0,'size':32,'pad':0,'label':"daTag_EvtArea_Delete__FPv",'name':"daTag_EvtArea_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048CCC0,'size':32,'pad':0,'label':"daTag_EvtArea_Execute__FPv",'name':"daTag_EvtArea_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048CCE0,'size':32,'pad':0,'label':"daTag_EvtArea_Draw__FPv",'name':"daTag_EvtArea_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048CD00,'size':8,'pad':0,'label':"daTag_EvtArea_IsDelete__FPv",'name':"daTag_EvtArea_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048CD08,'size':96,'pad':0,'label':"chkPointInArea__15daTag_EvtArea_cF4cXyz",'name':"chkPointInArea__15daTag_EvtArea_cF4cXyz",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048CD68,'size':96,'pad':0,'label':"__dt__15daTag_EvtArea_cFv",'name':"__dt__15daTag_EvtArea_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048CDC8,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8048CDCC,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8048CDD0,'size':4,'pad':0,'label':"lit_3853",'name':"@3853",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8048CDD4,'size':4,'pad':0,'label':"lit_3854",'name':"@3854",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8048CDD8,'size':4,'pad':0,'label':"lit_3855",'name':"@3855",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8048CDDC,'size':4,'pad':0,'label':"lit_3856",'name':"@3856",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8048CDE0,'size':4,'pad':0,'label':"lit_3922",'name':"@3922",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048CDE4,'size':4,'pad':0,'label':"lit_4146",'name':"@4146",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8048CDE8,'size':96,'pad':0,'label':"lit_3857",'name':"@3857",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048CE48,'size':32,'pad':0,'label':"daTag_EvtArea_MethodTable",'name':"daTag_EvtArea_MethodTable",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048CE68,'size':48,'pad':0,'label':"g_profile_TAG_EVTAREA",'name':"g_profile_TAG_EVTAREA",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048CE98,'size':12,'pad':0,'label':"__vt__15daTag_EvtArea_c",'name':"__vt__15daTag_EvtArea_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create__15daTag_EvtArea_cFv":3,
	"Delete__15daTag_EvtArea_cFv":4,
	"Execute__15daTag_EvtArea_cFv":5,
	"Draw__15daTag_EvtArea_cFv":6,
	"isDelete__15daTag_EvtArea_cFv":7,
	"chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz":8,
	"daTag_EvtArea_Create__FPv":9,
	"daTag_EvtArea_Delete__FPv":10,
	"daTag_EvtArea_Execute__FPv":11,
	"daTag_EvtArea_Draw__FPv":12,
	"daTag_EvtArea_IsDelete__FPv":13,
	"chkPointInArea__15daTag_EvtArea_cF4cXyz":14,
	"__dt__15daTag_EvtArea_cFv":15,
	"_ctors":16,
	"_dtors":17,
	"lit_3853":18,
	"lit_3854":19,
	"lit_3855":20,
	"lit_3856":21,
	"lit_3922":22,
	"lit_4146":23,
	"lit_3857":24,
	"daTag_EvtArea_MethodTable":25,
	"g_profile_TAG_EVTAREA":26,
	"__vt__15daTag_EvtArea_c":27,
}

