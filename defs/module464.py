#
# Generate By: dol2asm
# Module: 464
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_graWall",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_graWall",
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
	{'addr':0x80C10B80,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C10BAC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C10BD8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C10BF8,'size':336,'pad':0,'label':"Create__14daObjGraWall_cFv",'name':"Create__14daObjGraWall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C10D48,'size':72,'pad':0,'label':"__dt__8cM3dGCylFv",'name':"__dt__8cM3dGCylFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C10D90,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C10DD8,'size':160,'pad':0,'label':"Execute__14daObjGraWall_cFv",'name':"Execute__14daObjGraWall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C10E78,'size':8,'pad':0,'label':"Delete__14daObjGraWall_cFv",'name':"Delete__14daObjGraWall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C10E80,'size':84,'pad':0,'label':"col_init__14daObjGraWall_cFv",'name':"col_init__14daObjGraWall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C10ED4,'size':108,'pad':0,'label':"col_set__14daObjGraWall_cFv",'name':"col_set__14daObjGraWall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C10F40,'size':32,'pad':0,'label':"daObjGraWall_Execute__FP14daObjGraWall_c",'name':"daObjGraWall_Execute__FP14daObjGraWall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C10F60,'size':8,'pad':0,'label':"daObjGraWall_IsDelete__FP14daObjGraWall_c",'name':"daObjGraWall_IsDelete__FP14daObjGraWall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C10F68,'size':32,'pad':0,'label':"daObjGraWall_Delete__FP14daObjGraWall_c",'name':"daObjGraWall_Delete__FP14daObjGraWall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C10F88,'size':32,'pad':0,'label':"daObjGraWall_create__FP10fopAc_ac_c",'name':"daObjGraWall_create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C10FA8,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80C10FAC,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80C10FB0,'size':8,'pad':0,'label':"l_DATA",'name':"l_DATA",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C10FB8,'size':68,'pad':0,'label':"l_cyl_src",'name':"l_cyl_src",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C10FFC,'size':32,'pad':0,'label':"l_daObjGraWall_Method",'name':"l_daObjGraWall_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C1101C,'size':48,'pad':0,'label':"g_profile_GRA_WALL",'name':"g_profile_GRA_WALL",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C1104C,'size':12,'pad':0,'label':"__vt__8cM3dGCyl",'name':"__vt__8cM3dGCyl",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C11058,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"Create__14daObjGraWall_cFv":3,
	"__dt__8cM3dGCylFv":4,
	"__dt__8cM3dGAabFv":5,
	"Execute__14daObjGraWall_cFv":6,
	"Delete__14daObjGraWall_cFv":7,
	"col_init__14daObjGraWall_cFv":8,
	"col_set__14daObjGraWall_cFv":9,
	"daObjGraWall_Execute__FP14daObjGraWall_c":10,
	"daObjGraWall_IsDelete__FP14daObjGraWall_c":11,
	"daObjGraWall_Delete__FP14daObjGraWall_c":12,
	"daObjGraWall_create__FP10fopAc_ac_c":13,
	"_ctors":14,
	"_dtors":15,
	"l_DATA":16,
	"l_cyl_src":17,
	"l_daObjGraWall_Method":18,
	"g_profile_GRA_WALL":19,
	"__vt__8cM3dGCyl":20,
	"__vt__8cM3dGAab":21,
}

