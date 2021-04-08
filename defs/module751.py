#
# Generate By: dol2asm
# Module: 751
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_waterfall",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"global_destructor_chain",
	"d_a_tag_waterfall",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".dtors",
	".bss",
	".rodata",
	".data",
]

# Symbols
SYMBOLS = [
	{'addr':0x80D64540,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6456C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64598,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D645B8,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D645D4,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6462C,'size':84,'pad':0,'label':"__ct__20daTagWaterFall_HIO_cFv",'name':"__ct__20daTagWaterFall_HIO_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64680,'size':8,'pad':0,'label':"draw__16daTagWaterFall_cFv",'name':"draw__16daTagWaterFall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D64688,'size':32,'pad':0,'label':"daTagWaterFall_Draw__FP16daTagWaterFall_c",'name':"daTagWaterFall_Draw__FP16daTagWaterFall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D646A8,'size':124,'pad':0,'label':"s_waterfall__FPvPv",'name':"s_waterfall__FPvPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64724,'size':68,'pad':0,'label':"getEllipseY__16daTagWaterFall_cFf",'name':"getEllipseY__16daTagWaterFall_cFf",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64768,'size':260,'pad':0,'label':"checkHitWaterFall__16daTagWaterFall_cF4cXyz",'name':"checkHitWaterFall__16daTagWaterFall_cF4cXyz",'lib':-1,'tu':3,'section':0,'class_template':False,'static':False,'is_reachable':False,'r':[1,0,2],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D6486C,'size':72,'pad':0,'label':"checkHitWaterFallCamera__16daTagWaterFall_cFv",'name':"checkHitWaterFallCamera__16daTagWaterFall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D648B4,'size':516,'pad':0,'label':"execute__16daTagWaterFall_cFv",'name':"execute__16daTagWaterFall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64AB8,'size':32,'pad':0,'label':"daTagWaterFall_Execute__FP16daTagWaterFall_c",'name':"daTagWaterFall_Execute__FP16daTagWaterFall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64AD8,'size':8,'pad':0,'label':"daTagWaterFall_IsDelete__FP16daTagWaterFall_c",'name':"daTagWaterFall_IsDelete__FP16daTagWaterFall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D64AE0,'size':32,'pad':0,'label':"_delete__16daTagWaterFall_cFv",'name':"_delete__16daTagWaterFall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64B00,'size':32,'pad':0,'label':"daTagWaterFall_Delete__FP16daTagWaterFall_c",'name':"daTagWaterFall_Delete__FP16daTagWaterFall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64B20,'size':412,'pad':0,'label':"create__16daTagWaterFall_cFv",'name':"create__16daTagWaterFall_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64CBC,'size':32,'pad':0,'label':"daTagWaterFall_Create__FP16daTagWaterFall_c",'name':"daTagWaterFall_Create__FP16daTagWaterFall_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64CDC,'size':72,'pad':0,'label':"__dt__20daTagWaterFall_HIO_cFv",'name':"__dt__20daTagWaterFall_HIO_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D64D24,'size':60,'pad':0,'label':"__sinit_d_a_tag_waterfall_cpp",'name':"__sinit_d_a_tag_waterfall_cpp",'lib':-1,'tu':3,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x80D64D60,'size':8,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D64D68,'size':12,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D64D74,'size':4,'pad':0,'label':"lit_3758",'name':"@3758",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':True,'r':[4,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D64D78,'size':4,'pad':0,'label':"lit_3759",'name':"@3759",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D64D7C,'size':4,'pad':0,'label':"lit_3760",'name':"@3760",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D64D80,'size':4,'pad':0,'label':"lit_3803",'name':"@3803",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D64D84,'size':8,'pad':0,'label':"lit_3959",'name':"@3959",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D64D8C,'size':8,'pad':0,'label':"lit_3960",'name':"@3960",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D64D94,'size':4,'pad':0,'label':"m_master_id",'name':"m_master_id",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D64D98,'size':32,'pad':0,'label':"l_daTagWaterFall_Method",'name':"l_daTagWaterFall_Method",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D64DB8,'size':48,'pad':0,'label':"g_profile_Tag_WaterFall",'name':"g_profile_Tag_WaterFall",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D64DE8,'size':12,'pad':0,'label':"__vt__20daTagWaterFall_HIO_c",'name':"__vt__20daTagWaterFall_HIO_c",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D64DF8,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':-1,'tu':2,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D64E00,'size':4,'pad':0,'label':"data_80D64E00",'name':None,'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D64E04,'size':12,'pad':0,'label':"lit_3753",'name':"@3753",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D64E10,'size':36,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__20daTagWaterFall_HIO_cFv":5,
	"draw__16daTagWaterFall_cFv":6,
	"daTagWaterFall_Draw__FP16daTagWaterFall_c":7,
	"s_waterfall__FPvPv":8,
	"getEllipseY__16daTagWaterFall_cFf":9,
	"checkHitWaterFall__16daTagWaterFall_cF4cXyz":10,
	"checkHitWaterFallCamera__16daTagWaterFall_cFv":11,
	"execute__16daTagWaterFall_cFv":12,
	"daTagWaterFall_Execute__FP16daTagWaterFall_c":13,
	"daTagWaterFall_IsDelete__FP16daTagWaterFall_c":14,
	"_delete__16daTagWaterFall_cFv":15,
	"daTagWaterFall_Delete__FP16daTagWaterFall_c":16,
	"create__16daTagWaterFall_cFv":17,
	"daTagWaterFall_Create__FP16daTagWaterFall_c":18,
	"__dt__20daTagWaterFall_HIO_cFv":19,
	"__sinit_d_a_tag_waterfall_cpp":20,
	"_ctors":21,
	"_dtors":22,
	"lit_3758":23,
	"lit_3759":24,
	"lit_3760":25,
	"lit_3803":26,
	"lit_3959":27,
	"lit_3960":28,
	"m_master_id":29,
	"l_daTagWaterFall_Method":30,
	"g_profile_Tag_WaterFall":31,
	"__vt__20daTagWaterFall_HIO_c":32,
	"__global_destructor_chain":33,
	"data_80D64E00":34,
	"lit_3753":35,
	"l_HIO":36,
}

