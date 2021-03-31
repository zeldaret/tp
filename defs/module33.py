#
# Generate By: dol2asm
# Module: 33
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_evtmsg",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_tag_evtmsg",
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
	{'addr':0x8048CEC0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048CEEC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048CF18,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048CF38,'size':220,'pad':0,'label':"create__14daTag_EvtMsg_cFv",'name':"create__14daTag_EvtMsg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D014,'size':8,'pad':0,'label':"Delete__14daTag_EvtMsg_cFv",'name':"Delete__14daTag_EvtMsg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048D01C,'size':768,'pad':0,'label':"Execute__14daTag_EvtMsg_cFv",'name':"Execute__14daTag_EvtMsg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D31C,'size':8,'pad':0,'label':"Draw__14daTag_EvtMsg_cFv",'name':"Draw__14daTag_EvtMsg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048D324,'size':28,'pad':0,'label':"getOnEvtBit__14daTag_EvtMsg_cFv",'name':"getOnEvtBit__14daTag_EvtMsg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D340,'size':28,'pad':0,'label':"getOffEvtBit__14daTag_EvtMsg_cFv",'name':"getOffEvtBit__14daTag_EvtMsg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D35C,'size':12,'pad':0,'label':"getOnSwBit__14daTag_EvtMsg_cFv",'name':"getOnSwBit__14daTag_EvtMsg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D368,'size':12,'pad':0,'label':"getOffSwBit__14daTag_EvtMsg_cFv",'name':"getOffSwBit__14daTag_EvtMsg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D374,'size':16,'pad':0,'label':"getProcType__14daTag_EvtMsg_cFv",'name':"getProcType__14daTag_EvtMsg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D384,'size':164,'pad':0,'label':"isDelete__14daTag_EvtMsg_cFv",'name':"isDelete__14daTag_EvtMsg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D428,'size':292,'pad':0,'label':"chkPointInArea__14daTag_EvtMsg_cF4cXyz",'name':"chkPointInArea__14daTag_EvtMsg_cF4cXyz",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D54C,'size':128,'pad':0,'label':"ECut_talk__14daTag_EvtMsg_cFi",'name':"ECut_talk__14daTag_EvtMsg_cFi",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D5CC,'size':156,'pad':0,'label':"ECut_wait__14daTag_EvtMsg_cFi",'name':"ECut_wait__14daTag_EvtMsg_cFi",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D668,'size':32,'pad':0,'label':"daTag_EvtMsg_Create__FPv",'name':"daTag_EvtMsg_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D688,'size':32,'pad':0,'label':"daTag_EvtMsg_Delete__FPv",'name':"daTag_EvtMsg_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D6A8,'size':32,'pad':0,'label':"daTag_EvtMsg_Execute__FPv",'name':"daTag_EvtMsg_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D6C8,'size':32,'pad':0,'label':"daTag_EvtMsg_Draw__FPv",'name':"daTag_EvtMsg_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D6E8,'size':8,'pad':0,'label':"daTag_EvtMsg_IsDelete__FPv",'name':"daTag_EvtMsg_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8048D6F0,'size':112,'pad':0,'label':"__dt__14daTag_EvtMsg_cFv",'name':"__dt__14daTag_EvtMsg_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D760,'size':28,'pad':0,'label':"func_8048D760",'name':"cLib_calcTimer<i>__FPi",'lib':-1,'tu':3,'section':0,'class_template':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8048D77C,'size':96,'pad':0,'label':"__sinit_d_a_tag_evtmsg_cpp",'name':"__sinit_d_a_tag_evtmsg_cpp",'lib':-1,'tu':3,'section':0,'class_template':None,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x8048D7DC,'size':8,'pad':0,'label':"data_8048D7DC",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048D7E4,'size':4,'pad':0,'label':"data_8048D7E4",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048D7E8,'size':4,'pad':0,'label':"lit_3826",'name':"@3826",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8048D7EC,'size':44,'pad':0,'label':"struct_8048D7EC",'name':None,'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"Structure"},
	{'addr':0x8048D818,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048D824,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8048D838,'size':12,'pad':0,'label':"mEvtCutNameList__14daTag_EvtMsg_c",'name':"mEvtCutNameList__14daTag_EvtMsg_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048D844,'size':12,'pad':0,'label':"lit_3802",'name':"@3802",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048D850,'size':12,'pad':0,'label':"lit_3803",'name':"@3803",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048D85C,'size':36,'pad':0,'label':"mEvtCutList__14daTag_EvtMsg_c",'name':"mEvtCutList__14daTag_EvtMsg_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8048D880,'size':4,'pad':0,'label':"l_myName",'name':"l_myName",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048D884,'size':32,'pad':0,'label':"daTag_EvtMsg_MethodTable",'name':"daTag_EvtMsg_MethodTable",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048D8A4,'size':48,'pad':0,'label':"g_profile_TAG_EVTMSG",'name':"g_profile_TAG_EVTMSG",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8048D8D4,'size':12,'pad':0,'label':"__vt__14daTag_EvtMsg_c",'name':"__vt__14daTag_EvtMsg_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create__14daTag_EvtMsg_cFv":3,
	"Delete__14daTag_EvtMsg_cFv":4,
	"Execute__14daTag_EvtMsg_cFv":5,
	"Draw__14daTag_EvtMsg_cFv":6,
	"getOnEvtBit__14daTag_EvtMsg_cFv":7,
	"getOffEvtBit__14daTag_EvtMsg_cFv":8,
	"getOnSwBit__14daTag_EvtMsg_cFv":9,
	"getOffSwBit__14daTag_EvtMsg_cFv":10,
	"getProcType__14daTag_EvtMsg_cFv":11,
	"isDelete__14daTag_EvtMsg_cFv":12,
	"chkPointInArea__14daTag_EvtMsg_cF4cXyz":13,
	"ECut_talk__14daTag_EvtMsg_cFi":14,
	"ECut_wait__14daTag_EvtMsg_cFi":15,
	"daTag_EvtMsg_Create__FPv":16,
	"daTag_EvtMsg_Delete__FPv":17,
	"daTag_EvtMsg_Execute__FPv":18,
	"daTag_EvtMsg_Draw__FPv":19,
	"daTag_EvtMsg_IsDelete__FPv":20,
	"__dt__14daTag_EvtMsg_cFv":21,
	"func_8048D760":22,
	"__sinit_d_a_tag_evtmsg_cpp":23,
	"data_8048D7DC":24,
	"data_8048D7E4":25,
	"lit_3826":26,
	"struct_8048D7EC":27,
	"cNullVec__6Z2Calc":28,
	"lit_1787":29,
	"mEvtCutNameList__14daTag_EvtMsg_c":30,
	"lit_3802":31,
	"lit_3803":32,
	"mEvtCutList__14daTag_EvtMsg_c":33,
	"l_myName":34,
	"daTag_EvtMsg_MethodTable":35,
	"g_profile_TAG_EVTMSG":36,
	"__vt__14daTag_EvtMsg_c":37,
}

