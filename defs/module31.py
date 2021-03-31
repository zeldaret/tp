#
# Generate By: dol2asm
# Module: 31
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_evt",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_evt",
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
	{'addr':0x8048B8A0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B8CC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B8F8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B918,'size':192,'pad':0,'label':"create__11daTag_Evt_cFv",'name':"create__11daTag_Evt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048B9D8,'size':52,'pad':0,'label':"destroy__11daTag_Evt_cFv",'name':"destroy__11daTag_Evt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048BA0C,'size':1080,'pad':0,'label':"execute__11daTag_Evt_cFv",'name':"execute__11daTag_Evt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048BE44,'size':8,'pad':0,'label':"draw__11daTag_Evt_cFv",'name':"draw__11daTag_Evt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048BE4C,'size':280,'pad':0,'label':"getParam__11daTag_Evt_cFv",'name':"getParam__11daTag_Evt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048BF64,'size':300,'pad':0,'label':"isDelete__11daTag_Evt_cFv",'name':"isDelete__11daTag_Evt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C090,'size':148,'pad':0,'label':"doEvtCutWait__11daTag_Evt_cFi",'name':"doEvtCutWait__11daTag_Evt_cFi",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C124,'size':164,'pad':0,'label':"doEvtCutTalk__11daTag_Evt_cFi",'name':"doEvtCutTalk__11daTag_Evt_cFi",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C1C8,'size':180,'pad':0,'label':"doEvtCutNext__11daTag_Evt_cFi",'name':"doEvtCutNext__11daTag_Evt_cFi",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C27C,'size':32,'pad':0,'label':"daTag_Evt_Create__FPv",'name':"daTag_Evt_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C29C,'size':32,'pad':0,'label':"daTag_Evt_Delete__FPv",'name':"daTag_Evt_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C2BC,'size':32,'pad':0,'label':"daTag_Evt_Execute__FPv",'name':"daTag_Evt_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C2DC,'size':32,'pad':0,'label':"daTag_Evt_Draw__FPv",'name':"daTag_Evt_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C2FC,'size':8,'pad':0,'label':"daTag_Evt_IsDelete__FPv",'name':"daTag_Evt_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048C304,'size':112,'pad':0,'label':"__dt__11daTag_Evt_cFv",'name':"__dt__11daTag_Evt_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C374,'size':28,'pad':0,'label':"func_8048C374",'name':"cLib_calcTimer<i>__FPi",'lib':-1,'tu':3,'section':0,'class_template':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048C390,'size':4,'pad':0,'label':"data_8048C390",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048C394,'size':4,'pad':0,'label':"data_8048C394",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048C398,'size':4,'pad':0,'label':"lit_3784",'name':"@3784",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8048C39C,'size':4,'pad':0,'label':"lit_3785",'name':"@3785",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048C3A0,'size':8,'pad':0,'label':"lit_3786",'name':"@3786",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048C3A8,'size':8,'pad':0,'label':"lit_3787",'name':"@3787",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048C3B0,'size':8,'pad':0,'label':"lit_3788",'name':"@3788",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048C3B8,'size':4,'pad':0,'label':"lit_3815",'name':"@3815",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8048C3BC,'size':32,'pad':0,'label':"struct_8048C3BC",'name':None,'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[6,0,0],'sh':[0,0,0],'type':"Structure"},
	{'addr':0x8048C3DC,'size':32,'pad':0,'label':"data_8048C3DC",'name':None,'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048C3FC,'size':8,'pad':0,'label':"l_evtNameList",'name':"l_evtNameList",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048C404,'size':4,'pad':0,'label':"l_resFileName",'name':"l_resFileName",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048C408,'size':12,'pad':0,'label':"mEvtCutList__11daTag_Evt_c",'name':"mEvtCutList__11daTag_Evt_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048C414,'size':32,'pad':0,'label':"daTag_Evt_MethodTable",'name':"daTag_Evt_MethodTable",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048C434,'size':48,'pad':0,'label':"g_profile_TAG_EVT",'name':"g_profile_TAG_EVT",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048C464,'size':12,'pad':0,'label':"__vt__11daTag_Evt_c",'name':"__vt__11daTag_Evt_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create__11daTag_Evt_cFv":3,
	"destroy__11daTag_Evt_cFv":4,
	"execute__11daTag_Evt_cFv":5,
	"draw__11daTag_Evt_cFv":6,
	"getParam__11daTag_Evt_cFv":7,
	"isDelete__11daTag_Evt_cFv":8,
	"doEvtCutWait__11daTag_Evt_cFi":9,
	"doEvtCutTalk__11daTag_Evt_cFi":10,
	"doEvtCutNext__11daTag_Evt_cFi":11,
	"daTag_Evt_Create__FPv":12,
	"daTag_Evt_Delete__FPv":13,
	"daTag_Evt_Execute__FPv":14,
	"daTag_Evt_Draw__FPv":15,
	"daTag_Evt_IsDelete__FPv":16,
	"__dt__11daTag_Evt_cFv":17,
	"func_8048C374":18,
	"data_8048C390":19,
	"data_8048C394":20,
	"lit_3784":21,
	"lit_3785":22,
	"lit_3786":23,
	"lit_3787":24,
	"lit_3788":25,
	"lit_3815":26,
	"struct_8048C3BC":27,
	"data_8048C3DC":28,
	"l_evtNameList":29,
	"l_resFileName":30,
	"mEvtCutList__11daTag_Evt_c":31,
	"daTag_Evt_MethodTable":32,
	"g_profile_TAG_EVT":33,
	"__vt__11daTag_Evt_c":34,
}

