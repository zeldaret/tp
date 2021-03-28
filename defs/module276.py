#
# Generate By: dol2asm
# Module: 276
#

# Libraries
LIBRARIES = [
	"d/a/kytag/d_a_kytag16",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_kytag16",
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
	{'addr':0x80860BE0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80860C0C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80860C38,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80860C58,'size':8,'pad':0,'label':"daKytag16_Draw__FP13kytag16_class",'name':"daKytag16_Draw__FP13kytag16_class",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80860C60,'size':572,'pad':0,'label':"daKytag16_Execute__FP13kytag16_class",'name':"daKytag16_Execute__FP13kytag16_class",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80860E9C,'size':8,'pad':0,'label':"daKytag16_IsDelete__FP13kytag16_class",'name':"daKytag16_IsDelete__FP13kytag16_class",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80860EA4,'size':8,'pad':0,'label':"daKytag16_Delete__FP13kytag16_class",'name':"daKytag16_Delete__FP13kytag16_class",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80860EAC,'size':640,'pad':0,'label':"daKytag16_Create__FP10fopAc_ac_c",'name':"daKytag16_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8086112C,'size':4,'pad':0,'label':"data_8086112C",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80861130,'size':4,'pad':0,'label':"data_80861130",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80861134,'size':4,'pad':0,'label':"lit_3839",'name':"@3839",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80861138,'size':4,'pad':0,'label':"lit_3840",'name':"@3840",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8086113C,'size':4,'pad':0,'label':"lit_3841",'name':"@3841",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861140,'size':4,'pad':0,'label':"lit_3842",'name':"@3842",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861144,'size':4,'pad':0,'label':"lit_3843",'name':"@3843",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861148,'size':4,'pad':0,'label':"lit_3844",'name':"@3844",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8086114C,'size':4,'pad':0,'label':"lit_3845",'name':"@3845",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861150,'size':4,'pad':0,'label':"lit_3846",'name':"@3846",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861154,'size':4,'pad':0,'label':"lit_3847",'name':"@3847",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861158,'size':4,'pad':0,'label':"lit_3848",'name':"@3848",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8086115C,'size':4,'pad':0,'label':"lit_3849",'name':"@3849",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861160,'size':4,'pad':0,'label':"lit_3902",'name':"@3902",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861164,'size':4,'pad':0,'label':"lit_3903",'name':"@3903",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861168,'size':4,'pad':0,'label':"lit_3904",'name':"@3904",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8086116C,'size':4,'pad':0,'label':"lit_3905",'name':"@3905",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861170,'size':4,'pad':0,'label':"lit_3906",'name':"@3906",'lib':-1,'tu':3,'section':3,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861174,'size':4,'pad':0,'label':"lit_3907",'name':"@3907",'lib':-1,'tu':3,'section':3,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861178,'size':4,'pad':0,'label':"lit_3908",'name':"@3908",'lib':-1,'tu':3,'section':3,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8086117C,'size':4,'pad':0,'label':"lit_3909",'name':"@3909",'lib':-1,'tu':3,'section':3,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861180,'size':4,'pad':0,'label':"lit_3910",'name':"@3910",'lib':-1,'tu':3,'section':3,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80861184,'size':4,'pad':4,'label':"lit_3911",'name':"@3911",'lib':-1,'tu':3,'section':3,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8086118C,'size':8,'pad':0,'label':"lit_3913",'name':"@3913",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80861194,'size':8,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x8086119C,'size':32,'pad':0,'label':"lit_3917",'name':"@3917",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x808611BC,'size':32,'pad':0,'label':"l_daKytag16_Method",'name':"l_daKytag16_Method",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x808611DC,'size':48,'pad':0,'label':"g_profile_KYTAG16",'name':"g_profile_KYTAG16",'lib':-1,'tu':3,'section':4,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"daKytag16_Draw__FP13kytag16_class":3,
	"daKytag16_Execute__FP13kytag16_class":4,
	"daKytag16_IsDelete__FP13kytag16_class":5,
	"daKytag16_Delete__FP13kytag16_class":6,
	"daKytag16_Create__FP10fopAc_ac_c":7,
	"data_8086112C":8,
	"data_80861130":9,
	"lit_3839":10,
	"lit_3840":11,
	"lit_3841":12,
	"lit_3842":13,
	"lit_3843":14,
	"lit_3844":15,
	"lit_3845":16,
	"lit_3846":17,
	"lit_3847":18,
	"lit_3848":19,
	"lit_3849":20,
	"lit_3902":21,
	"lit_3903":22,
	"lit_3904":23,
	"lit_3905":24,
	"lit_3906":25,
	"lit_3907":26,
	"lit_3908":27,
	"lit_3909":28,
	"lit_3910":29,
	"lit_3911":30,
	"lit_3913":31,
	"stringBase0":32,
	"lit_3917":33,
	"l_daKytag16_Method":34,
	"g_profile_KYTAG16":35,
}

