#
# Generate By: dol2asm
# Module: 264
#

# Libraries
LIBRARIES = [
	"d/a/d_a_izumi_gate",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_izumi_gate",
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
	{'addr':0x80849020,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8084904C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80849078,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80849098,'size':32,'pad':0,'label':"initBaseMtx__13daIzumiGate_cFv",'name':"initBaseMtx__13daIzumiGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x808490B8,'size':84,'pad':0,'label':"setBaseMtx__13daIzumiGate_cFv",'name':"setBaseMtx__13daIzumiGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8084910C,'size':44,'pad':0,'label':"daIzumiGate_Draw__FP13daIzumiGate_c",'name':"daIzumiGate_Draw__FP13daIzumiGate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80849138,'size':32,'pad':0,'label':"daIzumiGate_Execute__FP13daIzumiGate_c",'name':"daIzumiGate_Execute__FP13daIzumiGate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80849158,'size':8,'pad':0,'label':"daIzumiGate_IsDelete__FP13daIzumiGate_c",'name':"daIzumiGate_IsDelete__FP13daIzumiGate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80849160,'size':36,'pad':0,'label':"daIzumiGate_Delete__FP13daIzumiGate_c",'name':"daIzumiGate_Delete__FP13daIzumiGate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80849184,'size':220,'pad':0,'label':"daIzumiGate_Create__FP10fopAc_ac_c",'name':"daIzumiGate_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80849260,'size':120,'pad':0,'label':"CreateHeap__13daIzumiGate_cFv",'name':"CreateHeap__13daIzumiGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x808492D8,'size':36,'pad':0,'label':"Create__13daIzumiGate_cFv",'name':"Create__13daIzumiGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x808492FC,'size':44,'pad':0,'label':"Execute__13daIzumiGate_cFPPA3_A4_f",'name':"Execute__13daIzumiGate_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80849328,'size':164,'pad':0,'label':"Draw__13daIzumiGate_cFv",'name':"Draw__13daIzumiGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x808493CC,'size':52,'pad':0,'label':"Delete__13daIzumiGate_cFv",'name':"Delete__13daIzumiGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80849400,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80849404,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80849408,'size':46,'pad':2,'label':"d_a_izumi_gate__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80849438,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8084943C,'size':32,'pad':0,'label':"l_daIzumiGate_Method",'name':"l_daIzumiGate_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8084945C,'size':48,'pad':0,'label':"g_profile_Izumi_Gate",'name':"g_profile_Izumi_Gate",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8084948C,'size':40,'pad':0,'label':"__vt__13daIzumiGate_c",'name':"__vt__13daIzumiGate_c",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initBaseMtx__13daIzumiGate_cFv":3,
	"setBaseMtx__13daIzumiGate_cFv":4,
	"daIzumiGate_Draw__FP13daIzumiGate_c":5,
	"daIzumiGate_Execute__FP13daIzumiGate_c":6,
	"daIzumiGate_IsDelete__FP13daIzumiGate_c":7,
	"daIzumiGate_Delete__FP13daIzumiGate_c":8,
	"daIzumiGate_Create__FP10fopAc_ac_c":9,
	"CreateHeap__13daIzumiGate_cFv":10,
	"Create__13daIzumiGate_cFv":11,
	"Execute__13daIzumiGate_cFPPA3_A4_f":12,
	"Draw__13daIzumiGate_cFv":13,
	"Delete__13daIzumiGate_cFv":14,
	"_ctors":15,
	"_dtors":16,
	"d_a_izumi_gate__stringBase0":17,
	"l_arcName":18,
	"l_daIzumiGate_Method":19,
	"g_profile_Izumi_Gate":20,
	"__vt__13daIzumiGate_c":21,
}

