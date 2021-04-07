#
# Generate By: dol2asm
# Module: 555
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_lv6elevta",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_lv6elevta",
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
	{'addr':0x80C82CC0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C82CEC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C82D18,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C82D38,'size':144,'pad':0,'label':"create1st__16daObjLv6ElevtA_cFv",'name':"create1st__16daObjLv6ElevtA_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C82DC8,'size':112,'pad':0,'label':"setMtx__16daObjLv6ElevtA_cFv",'name':"setMtx__16daObjLv6ElevtA_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C82E38,'size':112,'pad':0,'label':"CreateHeap__16daObjLv6ElevtA_cFv",'name':"CreateHeap__16daObjLv6ElevtA_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C82EA8,'size':252,'pad':0,'label':"Create__16daObjLv6ElevtA_cFv",'name':"Create__16daObjLv6ElevtA_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C82FA4,'size':132,'pad':0,'label':"searchObjLv6SwTurn__FPvPv",'name':"searchObjLv6SwTurn__FPvPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C83028,'size':148,'pad':0,'label':"eventStart__16daObjLv6ElevtA_cFv",'name':"eventStart__16daObjLv6ElevtA_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C830BC,'size':352,'pad':0,'label':"moveAngle__16daObjLv6ElevtA_cFPv",'name':"moveAngle__16daObjLv6ElevtA_cFPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C8321C,'size':796,'pad':0,'label':"Execute__16daObjLv6ElevtA_cFPPA3_A4_f",'name':"Execute__16daObjLv6ElevtA_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C83538,'size':164,'pad':0,'label':"Draw__16daObjLv6ElevtA_cFv",'name':"Draw__16daObjLv6ElevtA_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C835DC,'size':60,'pad':0,'label':"Delete__16daObjLv6ElevtA_cFv",'name':"Delete__16daObjLv6ElevtA_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C83618,'size':128,'pad':0,'label':"daObjLv6ElevtA_create1st__FP16daObjLv6ElevtA_c",'name':"daObjLv6ElevtA_create1st__FP16daObjLv6ElevtA_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C83698,'size':32,'pad':0,'label':"daObjLv6ElevtA_MoveBGDelete__FP16daObjLv6ElevtA_c",'name':"daObjLv6ElevtA_MoveBGDelete__FP16daObjLv6ElevtA_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C836B8,'size':32,'pad':0,'label':"daObjLv6ElevtA_MoveBGExecute__FP16daObjLv6ElevtA_c",'name':"daObjLv6ElevtA_MoveBGExecute__FP16daObjLv6ElevtA_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C836D8,'size':44,'pad':0,'label':"daObjLv6ElevtA_MoveBGDraw__FP16daObjLv6ElevtA_c",'name':"daObjLv6ElevtA_MoveBGDraw__FP16daObjLv6ElevtA_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C83704,'size':72,'pad':0,'label':"__dt__17dEvLib_callback_cFv",'name':"__dt__17dEvLib_callback_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C8374C,'size':8,'pad':0,'label':"eventStart__17dEvLib_callback_cFv",'name':"eventStart__17dEvLib_callback_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C83754,'size':8,'pad':0,'label':"eventRun__17dEvLib_callback_cFv",'name':"eventRun__17dEvLib_callback_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C8375C,'size':8,'pad':0,'label':"eventEnd__17dEvLib_callback_cFv",'name':"eventEnd__17dEvLib_callback_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C83764,'size':148,'pad':0,'label':"__dt__16daObjLv6ElevtA_cFv",'name':"__dt__16daObjLv6ElevtA_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C837F8,'size':8,'pad':0,'label':"func_80C837F8",'name':"@1448@eventStart__16daObjLv6ElevtA_cFv",'lib':-1,'tu':3,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C83800,'size':8,'pad':0,'label':"func_80C83800",'name':"@1448@__dt__16daObjLv6ElevtA_cFv",'lib':-1,'tu':3,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C83808,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80C8380C,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80C83810,'size':24,'pad':0,'label':"l_cull_box",'name':"l_cull_box",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C83828,'size':4,'pad':0,'label':"lit_3752",'name':"@3752",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C8382C,'size':4,'pad':0,'label':"lit_3753",'name':"@3753",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C83830,'size':4,'pad':0,'label':"lit_3754",'name':"@3754",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C83834,'size':4,'pad':0,'label':"lit_3755",'name':"@3755",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C83838,'size':4,'pad':4,'label':"lit_3756",'name':"@3756",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C83840,'size':8,'pad':0,'label':"lit_3758",'name':"@3758",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C83848,'size':10,'pad':0,'label':"d_a_obj_lv6elevta__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80C83854,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C83858,'size':32,'pad':0,'label':"daObjLv6ElevtA_METHODS",'name':"daObjLv6ElevtA_METHODS",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C83878,'size':48,'pad':0,'label':"g_profile_Obj_Lv6ElevtA",'name':"g_profile_Obj_Lv6ElevtA",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C838A8,'size':24,'pad':0,'label':"__vt__17dEvLib_callback_c",'name':"__vt__17dEvLib_callback_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C838C0,'size':72,'pad':0,'label':"__vt__16daObjLv6ElevtA_c",'name':"__vt__16daObjLv6ElevtA_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"create1st__16daObjLv6ElevtA_cFv":3,
	"setMtx__16daObjLv6ElevtA_cFv":4,
	"CreateHeap__16daObjLv6ElevtA_cFv":5,
	"Create__16daObjLv6ElevtA_cFv":6,
	"searchObjLv6SwTurn__FPvPv":7,
	"eventStart__16daObjLv6ElevtA_cFv":8,
	"moveAngle__16daObjLv6ElevtA_cFPv":9,
	"Execute__16daObjLv6ElevtA_cFPPA3_A4_f":10,
	"Draw__16daObjLv6ElevtA_cFv":11,
	"Delete__16daObjLv6ElevtA_cFv":12,
	"daObjLv6ElevtA_create1st__FP16daObjLv6ElevtA_c":13,
	"daObjLv6ElevtA_MoveBGDelete__FP16daObjLv6ElevtA_c":14,
	"daObjLv6ElevtA_MoveBGExecute__FP16daObjLv6ElevtA_c":15,
	"daObjLv6ElevtA_MoveBGDraw__FP16daObjLv6ElevtA_c":16,
	"__dt__17dEvLib_callback_cFv":17,
	"eventStart__17dEvLib_callback_cFv":18,
	"eventRun__17dEvLib_callback_cFv":19,
	"eventEnd__17dEvLib_callback_cFv":20,
	"__dt__16daObjLv6ElevtA_cFv":21,
	"func_80C837F8":22,
	"func_80C83800":23,
	"_ctors":24,
	"_dtors":25,
	"l_cull_box":26,
	"lit_3752":27,
	"lit_3753":28,
	"lit_3754":29,
	"lit_3755":30,
	"lit_3756":31,
	"lit_3758":32,
	"d_a_obj_lv6elevta__stringBase0":33,
	"l_arcName":34,
	"daObjLv6ElevtA_METHODS":35,
	"g_profile_Obj_Lv6ElevtA":36,
	"__vt__17dEvLib_callback_c":37,
	"__vt__16daObjLv6ElevtA_c":38,
}

