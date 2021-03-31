#
# Generate By: dol2asm
# Module: 653
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_tatigi",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_tatigi",
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
	{'addr':0x80D07960,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D0798C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D079B8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D079D8,'size':136,'pad':0,'label':"daObj_Tatigi_Draw__FP16obj_tatigi_class",'name':"daObj_Tatigi_Draw__FP16obj_tatigi_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D07A60,'size':648,'pad':0,'label':"daObj_Tatigi_Execute__FP16obj_tatigi_class",'name':"daObj_Tatigi_Execute__FP16obj_tatigi_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D07CE8,'size':8,'pad':0,'label':"daObj_Tatigi_IsDelete__FP16obj_tatigi_class",'name':"daObj_Tatigi_IsDelete__FP16obj_tatigi_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D07CF0,'size':136,'pad':0,'label':"daObj_Tatigi_Delete__FP16obj_tatigi_class",'name':"daObj_Tatigi_Delete__FP16obj_tatigi_class",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D07D78,'size':172,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D07E24,'size':436,'pad':0,'label':"set_pos_check__FP16obj_tatigi_classi",'name':"set_pos_check__FP16obj_tatigi_classi",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D07FD8,'size':1000,'pad':0,'label':"daObj_Tatigi_Create__FP10fopAc_ac_c",'name':"daObj_Tatigi_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D083C0,'size':212,'pad':0,'label':"__dt__5tg_ssFv",'name':"__dt__5tg_ssFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D08494,'size':148,'pad':0,'label':"__ct__5tg_ssFv",'name':"__ct__5tg_ssFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D08528,'size':72,'pad':0,'label':"__dt__8cM3dGCylFv",'name':"__dt__8cM3dGCylFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D08570,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D085B8,'size':4,'pad':0,'label':"data_80D085B8",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D085BC,'size':4,'pad':0,'label':"data_80D085BC",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D085C0,'size':4,'pad':0,'label':"lit_3867",'name':"@3867",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D085C4,'size':4,'pad':0,'label':"lit_3868",'name':"@3868",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D085C8,'size':4,'pad':0,'label':"lit_3869",'name':"@3869",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D085CC,'size':4,'pad':0,'label':"lit_3870",'name':"@3870",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D085D0,'size':8,'pad':0,'label':"lit_3872",'name':"@3872",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D085D8,'size':4,'pad':4,'label':"lit_3955",'name':"@3955",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D085E0,'size':8,'pad':0,'label':"lit_3956",'name':"@3956",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D085E8,'size':8,'pad':0,'label':"lit_3957",'name':"@3957",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D085F0,'size':8,'pad':0,'label':"lit_3958",'name':"@3958",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D085F8,'size':4,'pad':0,'label':"lit_3959",'name':"@3959",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D085FC,'size':4,'pad':0,'label':"lit_4068",'name':"@4068",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D08600,'size':4,'pad':0,'label':"lit_4069",'name':"@4069",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D08604,'size':4,'pad':0,'label':"lit_4070",'name':"@4070",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D08608,'size':4,'pad':0,'label':"lit_4071",'name':"@4071",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D0860C,'size':4,'pad':0,'label':"lit_4072",'name':"@4072",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D08610,'size':4,'pad':4,'label':"lit_4073",'name':"@4073",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D08618,'size':8,'pad':0,'label':"lit_4076",'name':"@4076",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D08620,'size':7,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D08628,'size':68,'pad':0,'label':"cc_cyl_src",'name':"cc_cyl_src$3986",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D0866C,'size':32,'pad':0,'label':"l_daObj_Tatigi_Method",'name':"l_daObj_Tatigi_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D0868C,'size':48,'pad':0,'label':"g_profile_OBJ_TATIGI",'name':"g_profile_OBJ_TATIGI",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D086BC,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D086C8,'size':12,'pad':0,'label':"__vt__8cM3dGCyl",'name':"__vt__8cM3dGCyl",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daObj_Tatigi_Draw__FP16obj_tatigi_class":3,
	"daObj_Tatigi_Execute__FP16obj_tatigi_class":4,
	"daObj_Tatigi_IsDelete__FP16obj_tatigi_class":5,
	"daObj_Tatigi_Delete__FP16obj_tatigi_class":6,
	"useHeapInit__FP10fopAc_ac_c":7,
	"set_pos_check__FP16obj_tatigi_classi":8,
	"daObj_Tatigi_Create__FP10fopAc_ac_c":9,
	"__dt__5tg_ssFv":10,
	"__ct__5tg_ssFv":11,
	"__dt__8cM3dGCylFv":12,
	"__dt__8cM3dGAabFv":13,
	"data_80D085B8":14,
	"data_80D085BC":15,
	"lit_3867":16,
	"lit_3868":17,
	"lit_3869":18,
	"lit_3870":19,
	"lit_3872":20,
	"lit_3955":21,
	"lit_3956":22,
	"lit_3957":23,
	"lit_3958":24,
	"lit_3959":25,
	"lit_4068":26,
	"lit_4069":27,
	"lit_4070":28,
	"lit_4071":29,
	"lit_4072":30,
	"lit_4073":31,
	"lit_4076":32,
	"stringBase0":33,
	"cc_cyl_src":34,
	"l_daObj_Tatigi_Method":35,
	"g_profile_OBJ_TATIGI":36,
	"__vt__8cM3dGAab":37,
	"__vt__8cM3dGCyl":38,
}

