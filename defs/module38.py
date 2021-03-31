#
# Generate By: dol2asm
# Module: 38
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_msg",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_msg",
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
	{'addr':0x8048F760,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F78C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F7B8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F7D8,'size':32,'pad':0,'label':"createHeapCallBack__FP10fopAc_ac_c",'name':"createHeapCallBack__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F7F8,'size':128,'pad':0,'label':"__dt__11daTag_Msg_cFv",'name':"__dt__11daTag_Msg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F878,'size':220,'pad':0,'label':"create__11daTag_Msg_cFv",'name':"create__11daTag_Msg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F954,'size':96,'pad':0,'label':"createHeap__11daTag_Msg_cFv",'name':"createHeap__11daTag_Msg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F9B4,'size':52,'pad':0,'label':"destroy__11daTag_Msg_cFv",'name':"destroy__11daTag_Msg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048F9E8,'size':640,'pad':0,'label':"execute__11daTag_Msg_cFv",'name':"execute__11daTag_Msg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048FC68,'size':8,'pad':0,'label':"draw__11daTag_Msg_cFv",'name':"draw__11daTag_Msg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048FC70,'size':424,'pad':0,'label':"rangeCheck__11daTag_Msg_cFv",'name':"rangeCheck__11daTag_Msg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048FE18,'size':372,'pad':0,'label':"otherCheck__11daTag_Msg_cFv",'name':"otherCheck__11daTag_Msg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048FF8C,'size':16,'pad':0,'label':"getResName__11daTag_Msg_cFv",'name':"getResName__11daTag_Msg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048FF9C,'size':176,'pad':0,'label':"getParam__11daTag_Msg_cFv",'name':"getParam__11daTag_Msg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8049004C,'size':84,'pad':0,'label':"cut_speak__11daTag_Msg_cFii",'name':"cut_speak__11daTag_Msg_cFii",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804900A0,'size':32,'pad':0,'label':"daTag_Msg_Create__FPv",'name':"daTag_Msg_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804900C0,'size':32,'pad':0,'label':"daTag_Msg_Delete__FPv",'name':"daTag_Msg_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804900E0,'size':32,'pad':0,'label':"daTag_Msg_Execute__FPv",'name':"daTag_Msg_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80490100,'size':32,'pad':0,'label':"daTag_Msg_Draw__FPv",'name':"daTag_Msg_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80490120,'size':8,'pad':0,'label':"daTag_Msg_IsDelete__FPv",'name':"daTag_Msg_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80490128,'size':72,'pad':0,'label':"__dt__17daTag_Msg_Param_cFv",'name':"__dt__17daTag_Msg_Param_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80490170,'size':4,'pad':0,'label':"data_80490170",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80490174,'size':4,'pad':0,'label':"data_80490174",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80490178,'size':1,'pad':3,'label':"m__17daTag_Msg_Param_c",'name':"m__17daTag_Msg_Param_c",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8049017C,'size':4,'pad':0,'label':"lit_3757",'name':"@3757",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80490180,'size':4,'pad':4,'label':"lit_3813",'name':"@3813",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80490188,'size':8,'pad':0,'label':"lit_3814",'name':"@3814",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80490190,'size':8,'pad':0,'label':"lit_3815",'name':"@3815",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80490198,'size':8,'pad':0,'label':"lit_3816",'name':"@3816",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804901A0,'size':4,'pad':0,'label':"lit_3880",'name':"@3880",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804901A4,'size':20,'pad':0,'label':"struct_804901A4",'name':None,'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"Structure"},
	{'addr':0x804901B8,'size':12,'pad':0,'label':"data_804901B8",'name':None,'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804901C4,'size':4,'pad':0,'label':"l_resName",'name':"l_resName",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804901C8,'size':8,'pad':0,'label':"l_evtNameTBL",'name':"l_evtNameTBL",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804901D0,'size':8,'pad':0,'label':"mEvtCutTBL__11daTag_Msg_c",'name':"mEvtCutTBL__11daTag_Msg_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804901D8,'size':32,'pad':0,'label':"daTag_Msg_MethodTable",'name':"daTag_Msg_MethodTable",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804901F8,'size':48,'pad':0,'label':"g_profile_TAG_MSG",'name':"g_profile_TAG_MSG",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80490228,'size':12,'pad':0,'label':"__vt__17daTag_Msg_Param_c",'name':"__vt__17daTag_Msg_Param_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80490234,'size':12,'pad':0,'label':"__vt__11daTag_Msg_c",'name':"__vt__11daTag_Msg_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"createHeapCallBack__FP10fopAc_ac_c":3,
	"__dt__11daTag_Msg_cFv":4,
	"create__11daTag_Msg_cFv":5,
	"createHeap__11daTag_Msg_cFv":6,
	"destroy__11daTag_Msg_cFv":7,
	"execute__11daTag_Msg_cFv":8,
	"draw__11daTag_Msg_cFv":9,
	"rangeCheck__11daTag_Msg_cFv":10,
	"otherCheck__11daTag_Msg_cFv":11,
	"getResName__11daTag_Msg_cFv":12,
	"getParam__11daTag_Msg_cFv":13,
	"cut_speak__11daTag_Msg_cFii":14,
	"daTag_Msg_Create__FPv":15,
	"daTag_Msg_Delete__FPv":16,
	"daTag_Msg_Execute__FPv":17,
	"daTag_Msg_Draw__FPv":18,
	"daTag_Msg_IsDelete__FPv":19,
	"__dt__17daTag_Msg_Param_cFv":20,
	"data_80490170":21,
	"data_80490174":22,
	"m__17daTag_Msg_Param_c":23,
	"lit_3757":24,
	"lit_3813":25,
	"lit_3814":26,
	"lit_3815":27,
	"lit_3816":28,
	"lit_3880":29,
	"struct_804901A4":30,
	"data_804901B8":31,
	"l_resName":32,
	"l_evtNameTBL":33,
	"mEvtCutTBL__11daTag_Msg_c":34,
	"daTag_Msg_MethodTable":35,
	"g_profile_TAG_MSG":36,
	"__vt__17daTag_Msg_Param_c":37,
	"__vt__11daTag_Msg_c":38,
}

