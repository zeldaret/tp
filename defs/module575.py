#
# Generate By: dol2asm
# Module: 575
#

# Libraries
LIBRARIES = [
	"d/a/obj/mirror/d_a_obj_mirror_screw",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_mirror_screw",
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
	{'addr':0x80C98A60,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C98A8C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':True,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C98AB8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C98AD8,'size':12,'pad':0,'label':"initWait__18daObjMirrorScrew_cFv",'name':"initWait__18daObjMirrorScrew_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C98AE4,'size':284,'pad':0,'label':"executeWait__18daObjMirrorScrew_cFv",'name':"executeWait__18daObjMirrorScrew_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C98C00,'size':772,'pad':0,'label':"initDown__18daObjMirrorScrew_cFv",'name':"initDown__18daObjMirrorScrew_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C98F04,'size':592,'pad':0,'label':"executeDown__18daObjMirrorScrew_cFv",'name':"executeDown__18daObjMirrorScrew_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C99154,'size':44,'pad':0,'label':"daObjMirrorScrew_Draw__FP18daObjMirrorScrew_c",'name':"daObjMirrorScrew_Draw__FP18daObjMirrorScrew_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C99180,'size':32,'pad':0,'label':"daObjMirrorScrew_Execute__FP18daObjMirrorScrew_c",'name':"daObjMirrorScrew_Execute__FP18daObjMirrorScrew_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C991A0,'size':8,'pad':0,'label':"daObjMirrorScrew_IsDelete__FP18daObjMirrorScrew_c",'name':"daObjMirrorScrew_IsDelete__FP18daObjMirrorScrew_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80C991A8,'size':36,'pad':0,'label':"daObjMirrorScrew_Delete__FP18daObjMirrorScrew_c",'name':"daObjMirrorScrew_Delete__FP18daObjMirrorScrew_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C991CC,'size':296,'pad':0,'label':"daObjMirrorScrew_Create__FP10fopAc_ac_c",'name':"daObjMirrorScrew_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C992F4,'size':112,'pad':0,'label':"CreateHeap__18daObjMirrorScrew_cFv",'name':"CreateHeap__18daObjMirrorScrew_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C99364,'size':300,'pad':0,'label':"Create__18daObjMirrorScrew_cFv",'name':"Create__18daObjMirrorScrew_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C99490,'size':376,'pad':0,'label':"Execute__18daObjMirrorScrew_cFPPA3_A4_f",'name':"Execute__18daObjMirrorScrew_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C99608,'size':164,'pad':0,'label':"Draw__18daObjMirrorScrew_cFv",'name':"Draw__18daObjMirrorScrew_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C996AC,'size':52,'pad':0,'label':"Delete__18daObjMirrorScrew_cFv",'name':"Delete__18daObjMirrorScrew_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C996E0,'size':112,'pad':0,'label':"__sinit_d_a_obj_mirror_screw_cpp",'name':"__sinit_d_a_obj_mirror_screw_cpp",'lib':-1,'tu':3,'section':0,'class_template':None,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x80C99750,'size':8,'pad':0,'label':"data_80C99750",'name':None,'lib':-1,'tu':1,'section':1,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C99758,'size':4,'pad':0,'label':"data_80C99758",'name':None,'lib':-1,'tu':2,'section':2,'class_template':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C9975C,'size':24,'pad':0,'label':"M_attr__18daObjMirrorScrew_c",'name':"M_attr__18daObjMirrorScrew_c",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C99774,'size':4,'pad':0,'label':"lit_3680",'name':"@3680",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C99778,'size':4,'pad':0,'label':"lit_3681",'name':"@3681",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C9977C,'size':4,'pad':4,'label':"lit_3682",'name':"@3682",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C99784,'size':8,'pad':0,'label':"lit_3684",'name':"@3684",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C9978C,'size':4,'pad':0,'label':"lit_3746",'name':"@3746",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C99790,'size':4,'pad':0,'label':"lit_3845",'name':"@3845",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C99794,'size':9,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80C997A0,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C997AC,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80C997C0,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C997C4,'size':12,'pad':0,'label':"lit_3648",'name':"@3648",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C997D0,'size':12,'pad':0,'label':"lit_3649",'name':"@3649",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C997DC,'size':12,'pad':0,'label':"lit_3650",'name':"@3650",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C997E8,'size':12,'pad':0,'label':"lit_3651",'name':"@3651",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C997F4,'size':48,'pad':0,'label':"ActionTable__18daObjMirrorScrew_c",'name':"ActionTable__18daObjMirrorScrew_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C99824,'size':32,'pad':0,'label':"l_daObjMirrorScrew_Method",'name':"l_daObjMirrorScrew_Method",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C99844,'size':48,'pad':0,'label':"g_profile_Obj_MirrorScrew",'name':"g_profile_Obj_MirrorScrew",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C99874,'size':40,'pad':0,'label':"__vt__18daObjMirrorScrew_c",'name':"__vt__18daObjMirrorScrew_c",'lib':-1,'tu':3,'section':4,'class_template':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"initWait__18daObjMirrorScrew_cFv":3,
	"executeWait__18daObjMirrorScrew_cFv":4,
	"initDown__18daObjMirrorScrew_cFv":5,
	"executeDown__18daObjMirrorScrew_cFv":6,
	"daObjMirrorScrew_Draw__FP18daObjMirrorScrew_c":7,
	"daObjMirrorScrew_Execute__FP18daObjMirrorScrew_c":8,
	"daObjMirrorScrew_IsDelete__FP18daObjMirrorScrew_c":9,
	"daObjMirrorScrew_Delete__FP18daObjMirrorScrew_c":10,
	"daObjMirrorScrew_Create__FP10fopAc_ac_c":11,
	"CreateHeap__18daObjMirrorScrew_cFv":12,
	"Create__18daObjMirrorScrew_cFv":13,
	"Execute__18daObjMirrorScrew_cFPPA3_A4_f":14,
	"Draw__18daObjMirrorScrew_cFv":15,
	"Delete__18daObjMirrorScrew_cFv":16,
	"__sinit_d_a_obj_mirror_screw_cpp":17,
	"data_80C99750":18,
	"data_80C99758":19,
	"M_attr__18daObjMirrorScrew_c":20,
	"lit_3680":21,
	"lit_3681":22,
	"lit_3682":23,
	"lit_3684":24,
	"lit_3746":25,
	"lit_3845":26,
	"stringBase0":27,
	"cNullVec__6Z2Calc":28,
	"lit_1787":29,
	"l_arcName":30,
	"lit_3648":31,
	"lit_3649":32,
	"lit_3650":33,
	"lit_3651":34,
	"ActionTable__18daObjMirrorScrew_c":35,
	"l_daObjMirrorScrew_Method":36,
	"g_profile_Obj_MirrorScrew":37,
	"__vt__18daObjMirrorScrew_c":38,
}

