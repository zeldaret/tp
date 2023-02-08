#
# Generate By: dol2asm
# Module: 95
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_fmobj",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_fmobj",
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
	{'addr':0x8057CB60,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057CB8C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057CBB8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057CBD8,'size':108,'pad':0,'label':"daObj_Fmobj_Draw__FP15obj_fmobj_class",'name':"daObj_Fmobj_Draw__FP15obj_fmobj_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057CC44,'size':64,'pad':0,'label':"daObj_Fmobj_Execute__FP15obj_fmobj_class",'name':"daObj_Fmobj_Execute__FP15obj_fmobj_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057CC84,'size':8,'pad':0,'label':"daObj_Fmobj_IsDelete__FP15obj_fmobj_class",'name':"daObj_Fmobj_IsDelete__FP15obj_fmobj_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8057CC8C,'size':80,'pad':0,'label':"daObj_Fmobj_Delete__FP15obj_fmobj_class",'name':"daObj_Fmobj_Delete__FP15obj_fmobj_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057CCDC,'size':260,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057CDE0,'size':384,'pad':0,'label':"daObj_Fmobj_Create__FP10fopAc_ac_c",'name':"daObj_Fmobj_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8057CF60,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8057CF64,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8057CF68,'size':4,'pad':0,'label':"lit_3743",'name':"@3743",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8057CF6C,'size':4,'pad':0,'label':"lit_3744",'name':"@3744",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8057CF70,'size':4,'pad':0,'label':"lit_3745",'name':"@3745",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8057CF74,'size':10,'pad':0,'label':"d_a_obj_fmobj__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x8057CF80,'size':32,'pad':0,'label':"l_daObj_Fmobj_Method",'name':"l_daObj_Fmobj_Method",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8057CFA0,'size':48,'pad':0,'label':"g_profile_OBJ_FMOBJ",'name':"g_profile_OBJ_FMOBJ",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daObj_Fmobj_Draw__FP15obj_fmobj_class":3,
	"daObj_Fmobj_Execute__FP15obj_fmobj_class":4,
	"daObj_Fmobj_IsDelete__FP15obj_fmobj_class":5,
	"daObj_Fmobj_Delete__FP15obj_fmobj_class":6,
	"useHeapInit__FP10fopAc_ac_c":7,
	"daObj_Fmobj_Create__FP10fopAc_ac_c":8,
	"_ctors":9,
	"_dtors":10,
	"lit_3743":11,
	"lit_3744":12,
	"lit_3745":13,
	"d_a_obj_fmobj__stringBase0":14,
	"l_daObj_Fmobj_Method":15,
	"g_profile_OBJ_FMOBJ":16,
}

