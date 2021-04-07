#
# Generate By: dol2asm
# Module: 128
#

# Libraries
LIBRARIES = [
	"d/a/tag/d_a_tag_lv2prchk",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"unknown_translation_unit_bss",
	"d_a_tag_lv2prchk",
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
	{'addr':0x805A4BE0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4C0C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4C38,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4C58,'size':132,'pad':0,'label':"Create__15daTagLv2PrChk_cFv",'name':"Create__15daTagLv2PrChk_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4CDC,'size':104,'pad':0,'label':"create__15daTagLv2PrChk_cFv",'name':"create__15daTagLv2PrChk_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4D44,'size':36,'pad':0,'label':"execute__15daTagLv2PrChk_cFv",'name':"execute__15daTagLv2PrChk_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4D68,'size':140,'pad':0,'label':"action__15daTagLv2PrChk_cFv",'name':"action__15daTagLv2PrChk_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A4DF4,'size':1180,'pad':0,'label':"actionCheck__15daTagLv2PrChk_cFv",'name':"actionCheck__15daTagLv2PrChk_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A5290,'size':4,'pad':0,'label':"actionEnd__15daTagLv2PrChk_cFv",'name':"actionEnd__15daTagLv2PrChk_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x805A5294,'size':96,'pad':0,'label':"seStartWrong__15daTagLv2PrChk_cFv",'name':"seStartWrong__15daTagLv2PrChk_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A52F4,'size':8,'pad':0,'label':"_delete__15daTagLv2PrChk_cFv",'name':"_delete__15daTagLv2PrChk_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x805A52FC,'size':32,'pad':0,'label':"daTagLv2PrChk_Execute__FP15daTagLv2PrChk_c",'name':"daTagLv2PrChk_Execute__FP15daTagLv2PrChk_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A531C,'size':32,'pad':0,'label':"daTagLv2PrChk_Delete__FP15daTagLv2PrChk_c",'name':"daTagLv2PrChk_Delete__FP15daTagLv2PrChk_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A533C,'size':32,'pad':0,'label':"daTagLv2PrChk_Create__FP15daTagLv2PrChk_c",'name':"daTagLv2PrChk_Create__FP15daTagLv2PrChk_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x805A535C,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x805A5360,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x805A5364,'size':4,'pad':0,'label':"lit_3844",'name':"@3844",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x805A5368,'size':4,'pad':0,'label':"lit_3845",'name':"@3845",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x805A536C,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A5378,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x805A538C,'size':12,'pad':0,'label':"lit_3667",'name':"@3667",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A5398,'size':12,'pad':0,'label':"lit_3668",'name':"@3668",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A53A4,'size':24,'pad':0,'label':"l_func",'name':"l_func$3666",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x805A53BC,'size':32,'pad':0,'label':"l_daTagLv2PrChk_Method",'name':"l_daTagLv2PrChk_Method",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A53DC,'size':48,'pad':0,'label':"g_profile_Tag_Lv2PrChk",'name':"g_profile_Tag_Lv2PrChk",'lib':-1,'tu':4,'section':5,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x805A5410,'size':4,'pad':0,'label':"data_805A5410",'name':None,'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"Create__15daTagLv2PrChk_cFv":3,
	"create__15daTagLv2PrChk_cFv":4,
	"execute__15daTagLv2PrChk_cFv":5,
	"action__15daTagLv2PrChk_cFv":6,
	"actionCheck__15daTagLv2PrChk_cFv":7,
	"actionEnd__15daTagLv2PrChk_cFv":8,
	"seStartWrong__15daTagLv2PrChk_cFv":9,
	"_delete__15daTagLv2PrChk_cFv":10,
	"daTagLv2PrChk_Execute__FP15daTagLv2PrChk_c":11,
	"daTagLv2PrChk_Delete__FP15daTagLv2PrChk_c":12,
	"daTagLv2PrChk_Create__FP15daTagLv2PrChk_c":13,
	"_ctors":14,
	"_dtors":15,
	"lit_3844":16,
	"lit_3845":17,
	"cNullVec__6Z2Calc":18,
	"lit_1787":19,
	"lit_3667":20,
	"lit_3668":21,
	"l_func":22,
	"l_daTagLv2PrChk_Method":23,
	"g_profile_Tag_Lv2PrChk":24,
	"data_805A5410":25,
}

