#
# Generate By: dol2asm
# Module: 445
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_fireWood",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_obj_fireWood",
	"global_destructor_chain",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".rodata",
	".data",
	".bss",
	".dtors",
]

# Symbols
SYMBOLS = [
	{'addr':0x80BE7540,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE756C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7598,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE75B8,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE75D4,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE762C,'size':60,'pad':0,'label':"__ct__16daFireWood_HIO_cFv",'name':"__ct__16daFireWood_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7668,'size':72,'pad':0,'label':"__dt__14mDoHIO_entry_cFv",'name':"__dt__14mDoHIO_entry_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE76B0,'size':88,'pad':0,'label':"setBaseMtx__12daFireWood_cFv",'name':"setBaseMtx__12daFireWood_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7708,'size':520,'pad':0,'label':"create__12daFireWood_cFv",'name':"create__12daFireWood_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7910,'size':72,'pad':0,'label':"__dt__8cM3dGCylFv",'name':"__dt__8cM3dGCylFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7958,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE79A0,'size':116,'pad':0,'label':"lightInit__12daFireWood_cFv",'name':"lightInit__12daFireWood_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7A14,'size':36,'pad':0,'label':"setLight__12daFireWood_cFv",'name':"setLight__12daFireWood_cFv",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7A38,'size':1084,'pad':0,'label':"Execute__12daFireWood_cFv",'name':"Execute__12daFireWood_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7E74,'size':8,'pad':0,'label':"Draw__12daFireWood_cFv",'name':"Draw__12daFireWood_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80BE7E7C,'size':40,'pad':0,'label':"Delete__12daFireWood_cFv",'name':"Delete__12daFireWood_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7EA4,'size':32,'pad':0,'label':"daFireWood_Draw__FP12daFireWood_c",'name':"daFireWood_Draw__FP12daFireWood_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7EC4,'size':32,'pad':0,'label':"daFireWood_Execute__FP12daFireWood_c",'name':"daFireWood_Execute__FP12daFireWood_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7EE4,'size':32,'pad':0,'label':"daFireWood_Delete__FP12daFireWood_c",'name':"daFireWood_Delete__FP12daFireWood_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7F04,'size':32,'pad':0,'label':"daFireWood_Create__FP10fopAc_ac_c",'name':"daFireWood_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7F24,'size':92,'pad':0,'label':"__dt__16daFireWood_HIO_cFv",'name':"__dt__16daFireWood_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7F80,'size':112,'pad':0,'label':"__sinit_d_a_obj_fireWood_cpp",'name':"__sinit_d_a_obj_fireWood_cpp",'lib':-1,'tu':2,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80BE7FF0,'size':8,'pad':0,'label':"data_80BE7FF0",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BE7FF8,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BE7FFC,'size':8,'pad':0,'label':"pad_80BE7FFC",'name':None,'lib':1,'tu':3,'section':5,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BE8004,'size':4,'pad':0,'label':"lit_3625",'name':"@3625",'lib':-1,'tu':2,'section':2,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BE8008,'size':4,'pad':0,'label':"lit_3626",'name':"@3626",'lib':-1,'tu':2,'section':2,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BE800C,'size':48,'pad':0,'label':"mCcDObjInfo__12daFireWood_c",'name':"mCcDObjInfo__12daFireWood_c",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BE803C,'size':4,'pad':0,'label':"lit_3806",'name':"@3806",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BE8040,'size':4,'pad':0,'label':"lit_3807",'name':"@3807",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BE8044,'size':4,'pad':0,'label':"lit_3808",'name':"@3808",'lib':-1,'tu':2,'section':2,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BE8048,'size':4,'pad':0,'label':"lit_3919",'name':"@3919",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BE804C,'size':4,'pad':0,'label':"lit_3920",'name':"@3920",'lib':-1,'tu':2,'section':2,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80BE8050,'size':68,'pad':0,'label':"mCcDCyl__12daFireWood_c",'name':"mCcDCyl__12daFireWood_c",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BE8094,'size':24,'pad':0,'label':"l_cull_box",'name':"l_cull_box",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BE80AC,'size':32,'pad':0,'label':"l_daFireWood_Method",'name':"l_daFireWood_Method",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BE80CC,'size':48,'pad':0,'label':"g_profile_Obj_FireWood",'name':"g_profile_Obj_FireWood",'lib':-1,'tu':2,'section':3,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BE80FC,'size':12,'pad':0,'label':"__vt__8cM3dGCyl",'name':"__vt__8cM3dGCyl",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BE8108,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BE8114,'size':12,'pad':0,'label':"__vt__16daFireWood_HIO_c",'name':"__vt__16daFireWood_HIO_c",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BE8120,'size':12,'pad':0,'label':"__vt__14mDoHIO_entry_c",'name':"__vt__14mDoHIO_entry_c",'lib':-1,'tu':2,'section':3,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80BE8130,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BE8138,'size':12,'pad':0,'label':"lit_3619",'name':"@3619",'lib':-1,'tu':2,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80BE8144,'size':16,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__16daFireWood_HIO_cFv":5,
	"__dt__14mDoHIO_entry_cFv":6,
	"setBaseMtx__12daFireWood_cFv":7,
	"create__12daFireWood_cFv":8,
	"__dt__8cM3dGCylFv":9,
	"__dt__8cM3dGAabFv":10,
	"lightInit__12daFireWood_cFv":11,
	"setLight__12daFireWood_cFv":12,
	"Execute__12daFireWood_cFv":13,
	"Draw__12daFireWood_cFv":14,
	"Delete__12daFireWood_cFv":15,
	"daFireWood_Draw__FP12daFireWood_c":16,
	"daFireWood_Execute__FP12daFireWood_c":17,
	"daFireWood_Delete__FP12daFireWood_c":18,
	"daFireWood_Create__FP10fopAc_ac_c":19,
	"__dt__16daFireWood_HIO_cFv":20,
	"__sinit_d_a_obj_fireWood_cpp":21,
	"data_80BE7FF0":22,
	"__destroy_global_chain_reference":23,
	"pad_80BE7FFC":24,
	"lit_3625":25,
	"lit_3626":26,
	"mCcDObjInfo__12daFireWood_c":27,
	"lit_3806":28,
	"lit_3807":29,
	"lit_3808":30,
	"lit_3919":31,
	"lit_3920":32,
	"mCcDCyl__12daFireWood_c":33,
	"l_cull_box":34,
	"l_daFireWood_Method":35,
	"g_profile_Obj_FireWood":36,
	"__vt__8cM3dGCyl":37,
	"__vt__8cM3dGAab":38,
	"__vt__16daFireWood_HIO_c":39,
	"__vt__14mDoHIO_entry_c":40,
	"__global_destructor_chain":41,
	"lit_3619":42,
	"l_HIO":43,
}

