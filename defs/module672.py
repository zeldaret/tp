#
# Generate By: dol2asm
# Module: 672
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_udoor",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_udoor",
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
	{'addr':0x80D206C0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D206EC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D20718,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D20738,'size':100,'pad':0,'label':"daObj_Udoor_Draw__FP15obj_udoor_class",'name':"daObj_Udoor_Draw__FP15obj_udoor_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2079C,'size':544,'pad':0,'label':"daObj_Udoor_Execute__FP15obj_udoor_class",'name':"daObj_Udoor_Execute__FP15obj_udoor_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D209BC,'size':8,'pad':0,'label':"daObj_Udoor_IsDelete__FP15obj_udoor_class",'name':"daObj_Udoor_IsDelete__FP15obj_udoor_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D209C4,'size':88,'pad':0,'label':"daObj_Udoor_Delete__FP15obj_udoor_class",'name':"daObj_Udoor_Delete__FP15obj_udoor_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D20A1C,'size':292,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D20B40,'size':520,'pad':0,'label':"daObj_Udoor_Create__FP10fopAc_ac_c",'name':"daObj_Udoor_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D20D48,'size':72,'pad':0,'label':"__dt__8cM3dGSphFv",'name':"__dt__8cM3dGSphFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D20D90,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D20DD8,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D20DDC,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D20DE0,'size':4,'pad':0,'label':"lit_3707",'name':"@3707",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D20DE4,'size':4,'pad':0,'label':"lit_3708",'name':"@3708",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D20DE8,'size':4,'pad':0,'label':"lit_3709",'name':"@3709",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D20DEC,'size':4,'pad':0,'label':"lit_3710",'name':"@3710",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D20DF0,'size':4,'pad':0,'label':"lit_3711",'name':"@3711",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D20DF4,'size':4,'pad':0,'label':"lit_3712",'name':"@3712",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D20DF8,'size':4,'pad':0,'label':"lit_3713",'name':"@3713",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D20DFC,'size':4,'pad':0,'label':"lit_3714",'name':"@3714",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D20E00,'size':4,'pad':0,'label':"lit_3828",'name':"@3828",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D20E04,'size':4,'pad':0,'label':"lit_3829",'name':"@3829",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D20E08,'size':4,'pad':0,'label':"lit_3830",'name':"@3830",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D20E0C,'size':4,'pad':0,'label':"lit_3831",'name':"@3831",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D20E10,'size':10,'pad':0,'label':"d_a_obj_udoor__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D20E1C,'size':8,'pad':0,'label':"bmdd",'name':"bmdd$3732",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D20E24,'size':8,'pad':0,'label':"dzbd",'name':"dzbd$3733",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D20E2C,'size':64,'pad':0,'label':"cc_sph_src",'name':"cc_sph_src$3768",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D20E6C,'size':32,'pad':0,'label':"l_daObj_Udoor_Method",'name':"l_daObj_Udoor_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D20E8C,'size':48,'pad':0,'label':"g_profile_OBJ_UDOOR",'name':"g_profile_OBJ_UDOOR",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D20EBC,'size':12,'pad':0,'label':"__vt__8cM3dGSph",'name':"__vt__8cM3dGSph",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D20EC8,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daObj_Udoor_Draw__FP15obj_udoor_class":3,
	"daObj_Udoor_Execute__FP15obj_udoor_class":4,
	"daObj_Udoor_IsDelete__FP15obj_udoor_class":5,
	"daObj_Udoor_Delete__FP15obj_udoor_class":6,
	"useHeapInit__FP10fopAc_ac_c":7,
	"daObj_Udoor_Create__FP10fopAc_ac_c":8,
	"__dt__8cM3dGSphFv":9,
	"__dt__8cM3dGAabFv":10,
	"_ctors":11,
	"_dtors":12,
	"lit_3707":13,
	"lit_3708":14,
	"lit_3709":15,
	"lit_3710":16,
	"lit_3711":17,
	"lit_3712":18,
	"lit_3713":19,
	"lit_3714":20,
	"lit_3828":21,
	"lit_3829":22,
	"lit_3830":23,
	"lit_3831":24,
	"d_a_obj_udoor__stringBase0":25,
	"bmdd":26,
	"dzbd":27,
	"cc_sph_src":28,
	"l_daObj_Udoor_Method":29,
	"g_profile_OBJ_UDOOR":30,
	"__vt__8cM3dGSph":31,
	"__vt__8cM3dGAab":32,
}

