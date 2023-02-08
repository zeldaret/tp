#
# Generate By: dol2asm
# Module: 604
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_rock",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_rock",
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
	{'addr':0x80CBDC20,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBDC4C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBDC78,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBDC98,'size':136,'pad':0,'label':"daObj_Rock_Draw__FP14obj_rock_class",'name':"daObj_Rock_Draw__FP14obj_rock_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBDD20,'size':296,'pad':0,'label':"daObj_Rock_Execute__FP14obj_rock_class",'name':"daObj_Rock_Execute__FP14obj_rock_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBDE48,'size':8,'pad':0,'label':"daObj_Rock_IsDelete__FP14obj_rock_class",'name':"daObj_Rock_IsDelete__FP14obj_rock_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80CBDE50,'size':136,'pad':0,'label':"daObj_Rock_Delete__FP14obj_rock_class",'name':"daObj_Rock_Delete__FP14obj_rock_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBDED8,'size':172,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBDF84,'size':436,'pad':0,'label':"set_pos_check__FP14obj_rock_classi",'name':"set_pos_check__FP14obj_rock_classi",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBE138,'size':1132,'pad':0,'label':"daObj_Rock_Create__FP10fopAc_ac_c",'name':"daObj_Rock_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBE5A4,'size':212,'pad':0,'label':"__dt__7rock_ssFv",'name':"__dt__7rock_ssFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBE678,'size':148,'pad':0,'label':"__ct__7rock_ssFv",'name':"__ct__7rock_ssFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBE70C,'size':72,'pad':0,'label':"__dt__8cM3dGSphFv",'name':"__dt__8cM3dGSphFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBE754,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80CBE79C,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CBE7A0,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80CBE7A4,'size':4,'pad':0,'label':"lit_3814",'name':"@3814",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CBE7A8,'size':4,'pad':0,'label':"lit_3894",'name':"@3894",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CBE7AC,'size':8,'pad':0,'label':"lit_3895",'name':"@3895",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CBE7B4,'size':8,'pad':0,'label':"lit_3896",'name':"@3896",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CBE7BC,'size':8,'pad':0,'label':"lit_3897",'name':"@3897",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CBE7C4,'size':4,'pad':0,'label':"lit_3898",'name':"@3898",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CBE7C8,'size':4,'pad':0,'label':"lit_4012",'name':"@4012",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CBE7CC,'size':4,'pad':0,'label':"lit_4013",'name':"@4013",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CBE7D0,'size':4,'pad':0,'label':"lit_4014",'name':"@4014",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CBE7D4,'size':4,'pad':0,'label':"lit_4015",'name':"@4015",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CBE7D8,'size':4,'pad':0,'label':"lit_4016",'name':"@4016",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80CBE7DC,'size':8,'pad':0,'label':"lit_4018",'name':"@4018",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CBE7E4,'size':9,'pad':0,'label':"d_a_obj_rock__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80CBE7F0,'size':64,'pad':0,'label':"cc_sph_src",'name':"cc_sph_src$3926",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80CBE830,'size':32,'pad':0,'label':"l_daObj_Rock_Method",'name':"l_daObj_Rock_Method",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CBE850,'size':48,'pad':0,'label':"g_profile_OBJ_ROCK",'name':"g_profile_OBJ_ROCK",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80CBE880,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80CBE88C,'size':12,'pad':0,'label':"__vt__8cM3dGSph",'name':"__vt__8cM3dGSph",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daObj_Rock_Draw__FP14obj_rock_class":3,
	"daObj_Rock_Execute__FP14obj_rock_class":4,
	"daObj_Rock_IsDelete__FP14obj_rock_class":5,
	"daObj_Rock_Delete__FP14obj_rock_class":6,
	"useHeapInit__FP10fopAc_ac_c":7,
	"set_pos_check__FP14obj_rock_classi":8,
	"daObj_Rock_Create__FP10fopAc_ac_c":9,
	"__dt__7rock_ssFv":10,
	"__ct__7rock_ssFv":11,
	"__dt__8cM3dGSphFv":12,
	"__dt__8cM3dGAabFv":13,
	"_ctors":14,
	"_dtors":15,
	"lit_3814":16,
	"lit_3894":17,
	"lit_3895":18,
	"lit_3896":19,
	"lit_3897":20,
	"lit_3898":21,
	"lit_4012":22,
	"lit_4013":23,
	"lit_4014":24,
	"lit_4015":25,
	"lit_4016":26,
	"lit_4018":27,
	"d_a_obj_rock__stringBase0":28,
	"cc_sph_src":29,
	"l_daObj_Rock_Method":30,
	"g_profile_OBJ_ROCK":31,
	"__vt__8cM3dGAab":32,
	"__vt__8cM3dGSph":33,
}

