#
# Generate By: dol2asm
# Module: 705
#

# Libraries
LIBRARIES = [
	"d/a/d_a_skip_2D",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_skip_2D",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".dtors",
	".data",
]

# Symbols
SYMBOLS = [
	{'addr':0x80D4D400,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D42C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D458,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D478,'size':32,'pad':0,'label':"daSkip2D_createHeap__FP10fopAc_ac_c",'name':"daSkip2D_createHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D498,'size':92,'pad':0,'label':"createHeap__10daSkip2D_cFv",'name':"createHeap__10daSkip2D_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D4F4,'size':148,'pad':0,'label':"create__10daSkip2D_cFv",'name':"create__10daSkip2D_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D588,'size':8,'pad':0,'label':"destroy__10daSkip2D_cFv",'name':"destroy__10daSkip2D_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D4D590,'size':64,'pad':0,'label':"draw__10daSkip2D_cFv",'name':"draw__10daSkip2D_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D5D0,'size':8,'pad':0,'label':"execute__10daSkip2D_cFv",'name':"execute__10daSkip2D_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D4D5D8,'size':20,'pad':0,'label':"initiate__10daSkip2D_cFv",'name':"initiate__10daSkip2D_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D5EC,'size':32,'pad':0,'label':"daSkip2D_Create__FPv",'name':"daSkip2D_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D60C,'size':32,'pad':0,'label':"daSkip2D_Delete__FPv",'name':"daSkip2D_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D62C,'size':32,'pad':0,'label':"daSkip2D_Execute__FPv",'name':"daSkip2D_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D64C,'size':32,'pad':0,'label':"daSkip2D_Draw__FPv",'name':"daSkip2D_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D66C,'size':8,'pad':0,'label':"daSkip2D_IsDelete__FPv",'name':"daSkip2D_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D4D674,'size':96,'pad':0,'label':"__dt__10daSkip2D_cFv",'name':"__dt__10daSkip2D_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D4D6D4,'size':4,'pad':0,'label':"data_80D4D6D4",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4D6D8,'size':4,'pad':0,'label':"data_80D4D6D8",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D4D6DC,'size':32,'pad':0,'label':"daSkip2D_MethodTable",'name':"daSkip2D_MethodTable",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4D6FC,'size':48,'pad':0,'label':"g_profile_SKIP2D",'name':"g_profile_SKIP2D",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D4D72C,'size':12,'pad':0,'label':"__vt__10daSkip2D_c",'name':"__vt__10daSkip2D_c",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daSkip2D_createHeap__FP10fopAc_ac_c":3,
	"createHeap__10daSkip2D_cFv":4,
	"create__10daSkip2D_cFv":5,
	"destroy__10daSkip2D_cFv":6,
	"draw__10daSkip2D_cFv":7,
	"execute__10daSkip2D_cFv":8,
	"initiate__10daSkip2D_cFv":9,
	"daSkip2D_Create__FPv":10,
	"daSkip2D_Delete__FPv":11,
	"daSkip2D_Execute__FPv":12,
	"daSkip2D_Draw__FPv":13,
	"daSkip2D_IsDelete__FPv":14,
	"__dt__10daSkip2D_cFv":15,
	"data_80D4D6D4":16,
	"data_80D4D6D8":17,
	"daSkip2D_MethodTable":18,
	"g_profile_SKIP2D":19,
	"__vt__10daSkip2D_c":20,
}

