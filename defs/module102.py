#
# Generate By: dol2asm
# Module: 102
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_ktonfire",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_obj_ktOnFire",
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
	{'addr':0x8058C520,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C54C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C578,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C598,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C5B4,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C60C,'size':36,'pad':0,'label':"__ct__16daKtOnFire_HIO_cFv",'name':"__ct__16daKtOnFire_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C630,'size':72,'pad':0,'label':"__dt__14mDoHIO_entry_cFv",'name':"__dt__14mDoHIO_entry_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C678,'size':88,'pad':0,'label':"setBaseMtx__12daKtOnFire_cFv",'name':"setBaseMtx__12daKtOnFire_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C6D0,'size':512,'pad':0,'label':"create__12daKtOnFire_cFv",'name':"create__12daKtOnFire_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C8D0,'size':72,'pad':0,'label':"__dt__8cM3dGCylFv",'name':"__dt__8cM3dGCylFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C918,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C960,'size':116,'pad':0,'label':"lightInit__12daKtOnFire_cFv",'name':"lightInit__12daKtOnFire_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C9D4,'size':36,'pad':0,'label':"setLight__12daKtOnFire_cFv",'name':"setLight__12daKtOnFire_cFv",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058C9F8,'size':36,'pad':0,'label':"cutLight__12daKtOnFire_cFv",'name':"cutLight__12daKtOnFire_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058CA1C,'size':988,'pad':0,'label':"Execute__12daKtOnFire_cFv",'name':"Execute__12daKtOnFire_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058CDF8,'size':8,'pad':0,'label':"Draw__12daKtOnFire_cFv",'name':"Draw__12daKtOnFire_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8058CE00,'size':40,'pad':0,'label':"Delete__12daKtOnFire_cFv",'name':"Delete__12daKtOnFire_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058CE28,'size':32,'pad':0,'label':"daKtOnFire_Draw__FP12daKtOnFire_c",'name':"daKtOnFire_Draw__FP12daKtOnFire_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058CE48,'size':32,'pad':0,'label':"daKtOnFire_Execute__FP12daKtOnFire_c",'name':"daKtOnFire_Execute__FP12daKtOnFire_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058CE68,'size':32,'pad':0,'label':"daKtOnFire_Delete__FP12daKtOnFire_c",'name':"daKtOnFire_Delete__FP12daKtOnFire_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058CE88,'size':32,'pad':0,'label':"daKtOnFire_Create__FP10fopAc_ac_c",'name':"daKtOnFire_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058CEA8,'size':92,'pad':0,'label':"__dt__16daKtOnFire_HIO_cFv",'name':"__dt__16daKtOnFire_HIO_cFv",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058CF04,'size':112,'pad':0,'label':"__sinit_d_a_obj_ktOnFire_cpp",'name':"__sinit_d_a_obj_ktOnFire_cpp",'lib':-1,'tu':2,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8058CF74,'size':8,'pad':0,'label':"data_8058CF74",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8058CF7C,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8058CF80,'size':8,'pad':0,'label':"pad_8058CF80",'name':None,'lib':1,'tu':3,'section':5,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8058CF88,'size':48,'pad':0,'label':"mCcDObjInfo__12daKtOnFire_c",'name':"mCcDObjInfo__12daKtOnFire_c",'lib':-1,'tu':2,'section':2,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8058CFB8,'size':4,'pad':4,'label':"lit_3710",'name':"@3710",'lib':-1,'tu':2,'section':2,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8058CFC0,'size':8,'pad':0,'label':"lit_3712",'name':"@3712",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8058CFC8,'size':4,'pad':0,'label':"lit_3797",'name':"@3797",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8058CFCC,'size':4,'pad':0,'label':"lit_3798",'name':"@3798",'lib':-1,'tu':2,'section':2,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8058CFD0,'size':4,'pad':0,'label':"lit_3913",'name':"@3913",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8058CFD4,'size':4,'pad':0,'label':"lit_3914",'name':"@3914",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8058CFD8,'size':4,'pad':0,'label':"lit_3915",'name':"@3915",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x8058CFDC,'size':24,'pad':0,'label':"l_cull_box",'name':"l_cull_box",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8058CFF4,'size':68,'pad':0,'label':"mCcDCyl__12daKtOnFire_c",'name':"mCcDCyl__12daKtOnFire_c",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8058D038,'size':32,'pad':0,'label':"l_daKtOnFire_Method",'name':"l_daKtOnFire_Method",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8058D058,'size':48,'pad':0,'label':"g_profile_Tag_KtOnFire",'name':"g_profile_Tag_KtOnFire",'lib':-1,'tu':2,'section':3,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8058D088,'size':12,'pad':0,'label':"__vt__8cM3dGCyl",'name':"__vt__8cM3dGCyl",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8058D094,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8058D0A0,'size':12,'pad':0,'label':"__vt__16daKtOnFire_HIO_c",'name':"__vt__16daKtOnFire_HIO_c",'lib':-1,'tu':2,'section':3,'r':[2,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8058D0AC,'size':12,'pad':0,'label':"__vt__14mDoHIO_entry_c",'name':"__vt__14mDoHIO_entry_c",'lib':-1,'tu':2,'section':3,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8058D0B8,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8058D0C0,'size':12,'pad':0,'label':"lit_3619",'name':"@3619",'lib':-1,'tu':2,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8058D0CC,'size':8,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':2,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__16daKtOnFire_HIO_cFv":5,
	"__dt__14mDoHIO_entry_cFv":6,
	"setBaseMtx__12daKtOnFire_cFv":7,
	"create__12daKtOnFire_cFv":8,
	"__dt__8cM3dGCylFv":9,
	"__dt__8cM3dGAabFv":10,
	"lightInit__12daKtOnFire_cFv":11,
	"setLight__12daKtOnFire_cFv":12,
	"cutLight__12daKtOnFire_cFv":13,
	"Execute__12daKtOnFire_cFv":14,
	"Draw__12daKtOnFire_cFv":15,
	"Delete__12daKtOnFire_cFv":16,
	"daKtOnFire_Draw__FP12daKtOnFire_c":17,
	"daKtOnFire_Execute__FP12daKtOnFire_c":18,
	"daKtOnFire_Delete__FP12daKtOnFire_c":19,
	"daKtOnFire_Create__FP10fopAc_ac_c":20,
	"__dt__16daKtOnFire_HIO_cFv":21,
	"__sinit_d_a_obj_ktOnFire_cpp":22,
	"data_8058CF74":23,
	"__destroy_global_chain_reference":24,
	"pad_8058CF80":25,
	"mCcDObjInfo__12daKtOnFire_c":26,
	"lit_3710":27,
	"lit_3712":28,
	"lit_3797":29,
	"lit_3798":30,
	"lit_3913":31,
	"lit_3914":32,
	"lit_3915":33,
	"l_cull_box":34,
	"mCcDCyl__12daKtOnFire_c":35,
	"l_daKtOnFire_Method":36,
	"g_profile_Tag_KtOnFire":37,
	"__vt__8cM3dGCyl":38,
	"__vt__8cM3dGAab":39,
	"__vt__16daKtOnFire_HIO_c":40,
	"__vt__14mDoHIO_entry_c":41,
	"__global_destructor_chain":42,
	"lit_3619":43,
	"l_HIO":44,
}

