#
# Generate By: dol2asm
# Module: 690
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_wood_pendulum",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_wood_pendulum",
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
	{'addr':0x80D39380,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D393AC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D393D8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D393F8,'size':32,'pad':0,'label':"CheckCreateHeap__FP10fopAc_ac_c",'name':"CheckCreateHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39418,'size':60,'pad':0,'label':"initBaseMtx__13daObjWPndlm_cFv",'name':"initBaseMtx__13daObjWPndlm_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39454,'size':120,'pad':0,'label':"setBaseMtx__13daObjWPndlm_cFv",'name':"setBaseMtx__13daObjWPndlm_cFv",'lib':-1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D394CC,'size':252,'pad':0,'label':"Create__13daObjWPndlm_cFv",'name':"Create__13daObjWPndlm_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D395C8,'size':112,'pad':0,'label':"CreateHeap__13daObjWPndlm_cFv",'name':"CreateHeap__13daObjWPndlm_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39638,'size':352,'pad':0,'label':"create__13daObjWPndlm_cFv",'name':"create__13daObjWPndlm_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39798,'size':132,'pad':0,'label':"__ct__8dCcD_SphFv",'name':"__ct__8dCcD_SphFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D3981C,'size':204,'pad':0,'label':"__dt__8dCcD_SphFv",'name':"__dt__8dCcD_SphFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D398E8,'size':72,'pad':0,'label':"__dt__8cM3dGSphFv",'name':"__dt__8cM3dGSphFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39930,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39978,'size':496,'pad':0,'label':"execute__13daObjWPndlm_cFv",'name':"execute__13daObjWPndlm_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39B68,'size':100,'pad':0,'label':"draw__13daObjWPndlm_cFv",'name':"draw__13daObjWPndlm_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39BCC,'size':52,'pad':0,'label':"_delete__13daObjWPndlm_cFv",'name':"_delete__13daObjWPndlm_cFv",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39C00,'size':32,'pad':0,'label':"daObjWPndlm_Draw__FP13daObjWPndlm_c",'name':"daObjWPndlm_Draw__FP13daObjWPndlm_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39C20,'size':32,'pad':0,'label':"daObjWPndlm_Execute__FP13daObjWPndlm_c",'name':"daObjWPndlm_Execute__FP13daObjWPndlm_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39C40,'size':32,'pad':0,'label':"daObjWPndlm_Delete__FP13daObjWPndlm_c",'name':"daObjWPndlm_Delete__FP13daObjWPndlm_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39C60,'size':32,'pad':0,'label':"daObjWPndlm_Create__FP10fopAc_ac_c",'name':"daObjWPndlm_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D39C80,'size':4,'pad':0,'label':"data_80D39C80",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D39C84,'size':4,'pad':0,'label':"data_80D39C84",'name':None,'lib':-1,'tu':2,'section':2,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D39C88,'size':64,'pad':0,'label':"l_sph_src",'name':"l_sph_src",'lib':-1,'tu':3,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D39CC8,'size':64,'pad':0,'label':"l_sph_src2",'name':"l_sph_src2",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D39D08,'size':4,'pad':4,'label':"lit_3672",'name':"@3672",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D39D10,'size':8,'pad':0,'label':"lit_3674",'name':"@3674",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D39D18,'size':24,'pad':0,'label':"lit_3826",'name':"@3826",'lib':-1,'tu':3,'section':3,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D39D30,'size':4,'pad':0,'label':"lit_3860",'name':"@3860",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D39D34,'size':4,'pad':0,'label':"lit_3861",'name':"@3861",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D39D38,'size':9,'pad':0,'label':"stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D39D44,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D39D48,'size':32,'pad':0,'label':"l_daObjWPndlm_Method",'name':"l_daObjWPndlm_Method",'lib':-1,'tu':3,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D39D68,'size':48,'pad':0,'label':"g_profile_Obj_WoodPendulum",'name':"g_profile_Obj_WoodPendulum",'lib':-1,'tu':3,'section':4,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D39D98,'size':12,'pad':0,'label':"__vt__8cM3dGSph",'name':"__vt__8cM3dGSph",'lib':-1,'tu':3,'section':4,'r':[4,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D39DA4,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'r':[4,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"CheckCreateHeap__FP10fopAc_ac_c":3,
	"initBaseMtx__13daObjWPndlm_cFv":4,
	"setBaseMtx__13daObjWPndlm_cFv":5,
	"Create__13daObjWPndlm_cFv":6,
	"CreateHeap__13daObjWPndlm_cFv":7,
	"create__13daObjWPndlm_cFv":8,
	"__ct__8dCcD_SphFv":9,
	"__dt__8dCcD_SphFv":10,
	"__dt__8cM3dGSphFv":11,
	"__dt__8cM3dGAabFv":12,
	"execute__13daObjWPndlm_cFv":13,
	"draw__13daObjWPndlm_cFv":14,
	"_delete__13daObjWPndlm_cFv":15,
	"daObjWPndlm_Draw__FP13daObjWPndlm_c":16,
	"daObjWPndlm_Execute__FP13daObjWPndlm_c":17,
	"daObjWPndlm_Delete__FP13daObjWPndlm_c":18,
	"daObjWPndlm_Create__FP10fopAc_ac_c":19,
	"data_80D39C80":20,
	"data_80D39C84":21,
	"l_sph_src":22,
	"l_sph_src2":23,
	"lit_3672":24,
	"lit_3674":25,
	"lit_3826":26,
	"lit_3860":27,
	"lit_3861":28,
	"stringBase0":29,
	"l_arcName":30,
	"l_daObjWPndlm_Method":31,
	"g_profile_Obj_WoodPendulum":32,
	"__vt__8cM3dGSph":33,
	"__vt__8cM3dGAab":34,
}

