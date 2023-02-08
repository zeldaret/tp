#
# Generate By: dol2asm
# Module: 81
#

# Libraries
LIBRARIES = [
	"d/a/npc/d_a_npc_fish",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_npc_fish",
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
	{'addr':0x80542100,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8054212C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80542158,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80542178,'size':8,'pad':0,'label':"daNpc_Fish_Draw__FP14npc_fish_class",'name':"daNpc_Fish_Draw__FP14npc_fish_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80542180,'size':8,'pad':0,'label':"daNpc_Fish_Execute__FP14npc_fish_class",'name':"daNpc_Fish_Execute__FP14npc_fish_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80542188,'size':8,'pad':0,'label':"daNpc_Fish_IsDelete__FP14npc_fish_class",'name':"daNpc_Fish_IsDelete__FP14npc_fish_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80542190,'size':8,'pad':0,'label':"daNpc_Fish_Delete__FP14npc_fish_class",'name':"daNpc_Fish_Delete__FP14npc_fish_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80542198,'size':188,'pad':0,'label':"fish_set__FP10fopAc_ac_cP11fish_data_s",'name':"fish_set__FP10fopAc_ac_cP11fish_data_s",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80542254,'size':612,'pad':0,'label':"daNpc_Fish_Create__FP10fopAc_ac_c",'name':"daNpc_Fish_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805424B8,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x805424BC,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x805424C0,'size':4,'pad':0,'label':"lit_3787",'name':"@3787",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x805424C4,'size':4,'pad':0,'label':"lit_3788",'name':"@3788",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805424C8,'size':4,'pad':0,'label':"lit_3789",'name':"@3789",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x805424CC,'size':4,'pad':0,'label':"lit_3790",'name':"@3790",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x805424D0,'size':4,'pad':0,'label':"lit_3791",'name':"@3791",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x805424D4,'size':4,'pad':0,'label':"lit_3792",'name':"@3792",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x805424D8,'size':4,'pad':0,'label':"lit_3793",'name':"@3793",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x805424DC,'size':8,'pad':0,'label':"d_a_npc_fish__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x805424E4,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805424F0,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80542504,'size':980,'pad':0,'label':"fish_d127_S",'name':"fish_d127_S",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805428D8,'size':1120,'pad':0,'label':"fish_d127",'name':"fish_d127",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80542D38,'size':144,'pad':0,'label':"lf_pos",'name':"lf_pos",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80542DC8,'size':32,'pad':0,'label':"l_daNpc_Fish_Method",'name':"l_daNpc_Fish_Method",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80542DE8,'size':48,'pad':0,'label':"g_profile_NPC_FISH",'name':"g_profile_NPC_FISH",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daNpc_Fish_Draw__FP14npc_fish_class":3,
	"daNpc_Fish_Execute__FP14npc_fish_class":4,
	"daNpc_Fish_IsDelete__FP14npc_fish_class":5,
	"daNpc_Fish_Delete__FP14npc_fish_class":6,
	"fish_set__FP10fopAc_ac_cP11fish_data_s":7,
	"daNpc_Fish_Create__FP10fopAc_ac_c":8,
	"_ctors":9,
	"_dtors":10,
	"lit_3787":11,
	"lit_3788":12,
	"lit_3789":13,
	"lit_3790":14,
	"lit_3791":15,
	"lit_3792":16,
	"lit_3793":17,
	"d_a_npc_fish__stringBase0":18,
	"cNullVec__6Z2Calc":19,
	"lit_1787":20,
	"fish_d127_S":21,
	"fish_d127":22,
	"lf_pos":23,
	"l_daNpc_Fish_Method":24,
	"g_profile_NPC_FISH":25,
}

