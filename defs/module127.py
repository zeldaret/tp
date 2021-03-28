#
# Generate By: dol2asm
# Module: 127
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_hstop",
	"Runtime.PPCEABI.H",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"d_a_tag_hstop",
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
	{'addr':0x805A4300,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A432C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4358,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4378,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':1,'tu':3,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4394,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':1,'tu':3,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A43EC,'size':492,'pad':0,'label':"create__12daTagHstop_cFv",'name':"create__12daTagHstop_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A45D8,'size':32,'pad':0,'label':"daTagHstop_Create__FP10fopAc_ac_c",'name':"daTagHstop_Create__FP10fopAc_ac_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A45F8,'size':152,'pad':0,'label':"__dt__12daTagHstop_cFv",'name':"__dt__12daTagHstop_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4690,'size':40,'pad':0,'label':"daTagHstop_Delete__FP12daTagHstop_c",'name':"daTagHstop_Delete__FP12daTagHstop_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A46B8,'size':164,'pad':0,'label':"setActive__12daTagHstop_cFv",'name':"setActive__12daTagHstop_cFv",'lib':-1,'tu':2,'section':0,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A475C,'size':844,'pad':0,'label':"execute__12daTagHstop_cFv",'name':"execute__12daTagHstop_cFv",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4AA8,'size':32,'pad':0,'label':"daTagHstop_Execute__FP12daTagHstop_c",'name':"daTagHstop_Execute__FP12daTagHstop_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4AC8,'size':8,'pad':0,'label':"daTagHstop_Draw__FP12daTagHstop_c",'name':"daTagHstop_Draw__FP12daTagHstop_c",'lib':-1,'tu':2,'section':0,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x805A4AD0,'size':60,'pad':0,'label':"__sinit_d_a_tag_hstop_cpp",'name':"__sinit_d_a_tag_hstop_cpp",'lib':-1,'tu':2,'section':0,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4B0C,'size':8,'pad':0,'label':"data_805A4B0C",'name':None,'lib':-1,'tu':1,'section':1,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A4B14,'size':4,'pad':0,'label':"__destroy_global_chain_reference",'name':"__destroy_global_chain_reference",'lib':1,'tu':3,'section':5,'r':[0,1,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A4B18,'size':8,'pad':0,'label':"pad_805A4B18",'name':None,'lib':1,'tu':3,'section':5,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A4B20,'size':4,'pad':0,'label':"lit_3782",'name':"@3782",'lib':-1,'tu':2,'section':2,'r':[1,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A4B24,'size':32,'pad':0,'label':"l_daTagHstop_Method",'name':"l_daTagHstop_Method",'lib':-1,'tu':2,'section':3,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A4B44,'size':48,'pad':0,'label':"g_profile_Tag_Hstop",'name':"g_profile_Tag_Hstop",'lib':-1,'tu':2,'section':3,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A4B78,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':1,'tu':3,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A4B80,'size':12,'pad':0,'label':"lit_3686",'name':"@3686",'lib':-1,'tu':2,'section':4,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A4B8C,'size':76,'pad':0,'label':"m_msgFlow__12daTagHstop_c",'name':"m_msgFlow__12daTagHstop_c",'lib':-1,'tu':2,'section':4,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"create__12daTagHstop_cFv":5,
	"daTagHstop_Create__FP10fopAc_ac_c":6,
	"__dt__12daTagHstop_cFv":7,
	"daTagHstop_Delete__FP12daTagHstop_c":8,
	"setActive__12daTagHstop_cFv":9,
	"execute__12daTagHstop_cFv":10,
	"daTagHstop_Execute__FP12daTagHstop_c":11,
	"daTagHstop_Draw__FP12daTagHstop_c":12,
	"__sinit_d_a_tag_hstop_cpp":13,
	"data_805A4B0C":14,
	"__destroy_global_chain_reference":15,
	"pad_805A4B18":16,
	"lit_3782":17,
	"l_daTagHstop_Method":18,
	"g_profile_Tag_Hstop":19,
	"__global_destructor_chain":20,
	"lit_3686":21,
	"m_msgFlow__12daTagHstop_c":22,
}

