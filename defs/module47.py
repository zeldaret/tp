#
# Generate By: dol2asm
# Module: 47
#

# Libraries
LIBRARIES = [
	"d/a/d_a_crod",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"unknown_translation_unit_bss",
	"d_a_crod",
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
	{'addr':0x804A2DC0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A2DEC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A2E18,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A2E38,'size':192,'pad':0,'label':"createHeap__8daCrod_cFv",'name':"createHeap__8daCrod_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A2EF8,'size':32,'pad':0,'label':"daCrod_createHeap__FP10fopAc_ac_c",'name':"daCrod_createHeap__FP10fopAc_ac_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A2F18,'size':736,'pad':0,'label':"create__8daCrod_cFv",'name':"create__8daCrod_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A31F8,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A3240,'size':92,'pad':0,'label':"__dt__10dCcD_GSttsFv",'name':"__dt__10dCcD_GSttsFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A329C,'size':72,'pad':0,'label':"__dt__12J3DFrameCtrlFv",'name':"__dt__12J3DFrameCtrlFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A32E4,'size':32,'pad':0,'label':"daCrod_Create__FP10fopAc_ac_c",'name':"daCrod_Create__FP10fopAc_ac_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A3304,'size':388,'pad':0,'label':"__dt__8daCrod_cFv",'name':"__dt__8daCrod_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A3488,'size':40,'pad':0,'label':"daCrod_Delete__FP8daCrod_c",'name':"daCrod_Delete__FP8daCrod_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A34B0,'size':4,'pad':0,'label':"setRoomInfo__8daCrod_cFv",'name':"setRoomInfo__8daCrod_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x804A34B4,'size':76,'pad':0,'label':"setMatrix__8daCrod_cFv",'name':"setMatrix__8daCrod_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A3500,'size':128,'pad':0,'label':"posMove__8daCrod_cFv",'name':"posMove__8daCrod_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A3580,'size':124,'pad':0,'label':"setBckAnm__8daCrod_cFUs",'name':"setBckAnm__8daCrod_cFUs",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A35FC,'size':96,'pad':0,'label':"setReturn__8daCrod_cFv",'name':"setReturn__8daCrod_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A365C,'size':124,'pad':0,'label':"setLightPower__8daCrod_cFv",'name':"setLightPower__8daCrod_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A36D8,'size':2268,'pad':0,'label':"execute__8daCrod_cFv",'name':"execute__8daCrod_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A3FB4,'size':32,'pad':0,'label':"daCrod_Execute__FP8daCrod_c",'name':"daCrod_Execute__FP8daCrod_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A3FD4,'size':168,'pad':0,'label':"draw__8daCrod_cFv",'name':"draw__8daCrod_cFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A407C,'size':32,'pad':0,'label':"daCrod_Draw__FP8daCrod_c",'name':"daCrod_Draw__FP8daCrod_c",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A409C,'size':72,'pad':0,'label':"__dt__10cCcD_GSttsFv",'name':"__dt__10cCcD_GSttsFv",'lib':-1,'tu':4,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x804A40E4,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x804A40E8,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':False,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x804A40EC,'size':12,'pad':0,'label':"lit_3759",'name':"@3759",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804A40F8,'size':12,'pad':0,'label':"l_localRodPos",'name':"l_localRodPos",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804A4104,'size':4,'pad':0,'label':"lit_4173",'name':"@4173",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804A4108,'size':4,'pad':0,'label':"lit_4489",'name':"@4489",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804A410C,'size':4,'pad':0,'label':"lit_4490",'name':"@4490",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804A4110,'size':4,'pad':0,'label':"lit_4491",'name':"@4491",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804A4114,'size':4,'pad':0,'label':"lit_4774",'name':"@4774",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804A4118,'size':4,'pad':0,'label':"lit_4775",'name':"@4775",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804A411C,'size':4,'pad':4,'label':"lit_4776",'name':"@4776",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x804A4124,'size':8,'pad':0,'label':"lit_4777",'name':"@4777",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804A412C,'size':8,'pad':0,'label':"lit_4778",'name':"@4778",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804A4134,'size':8,'pad':0,'label':"lit_4779",'name':"@4779",'lib':-1,'tu':4,'section':4,'class_template':False,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804A413C,'size':76,'pad':0,'label':"l_atCpsSrc",'name':"l_atCpsSrc",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804A4188,'size':12,'pad':0,'label':"shootInitLocalPos",'name':"shootInitLocalPos$4524",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x804A4194,'size':32,'pad':0,'label':"l_daCrod_Method",'name':"l_daCrod_Method",'lib':-1,'tu':4,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804A41B4,'size':48,'pad':0,'label':"g_profile_CROD",'name':"g_profile_CROD",'lib':-1,'tu':4,'section':5,'class_template':False,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x804A41E4,'size':12,'pad':0,'label':"__vt__10cCcD_GStts",'name':"__vt__10cCcD_GStts",'lib':-1,'tu':4,'section':5,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x804A41F0,'size':12,'pad':0,'label':"__vt__10dCcD_GStts",'name':"__vt__10dCcD_GStts",'lib':-1,'tu':4,'section':5,'class_template':False,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x804A41FC,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':4,'section':5,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x804A4208,'size':12,'pad':0,'label':"__vt__12J3DFrameCtrl",'name':"__vt__12J3DFrameCtrl",'lib':-1,'tu':4,'section':5,'class_template':False,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x804A4218,'size':4,'pad':0,'label':"data_804A4218",'name':None,'lib':-1,'tu':3,'section':3,'class_template':False,'static':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"createHeap__8daCrod_cFv":3,
	"daCrod_createHeap__FP10fopAc_ac_c":4,
	"create__8daCrod_cFv":5,
	"__dt__8cM3dGAabFv":6,
	"__dt__10dCcD_GSttsFv":7,
	"__dt__12J3DFrameCtrlFv":8,
	"daCrod_Create__FP10fopAc_ac_c":9,
	"__dt__8daCrod_cFv":10,
	"daCrod_Delete__FP8daCrod_c":11,
	"setRoomInfo__8daCrod_cFv":12,
	"setMatrix__8daCrod_cFv":13,
	"posMove__8daCrod_cFv":14,
	"setBckAnm__8daCrod_cFUs":15,
	"setReturn__8daCrod_cFv":16,
	"setLightPower__8daCrod_cFv":17,
	"execute__8daCrod_cFv":18,
	"daCrod_Execute__FP8daCrod_c":19,
	"draw__8daCrod_cFv":20,
	"daCrod_Draw__FP8daCrod_c":21,
	"__dt__10cCcD_GSttsFv":22,
	"_ctors":23,
	"_dtors":24,
	"lit_3759":25,
	"l_localRodPos":26,
	"lit_4173":27,
	"lit_4489":28,
	"lit_4490":29,
	"lit_4491":30,
	"lit_4774":31,
	"lit_4775":32,
	"lit_4776":33,
	"lit_4777":34,
	"lit_4778":35,
	"lit_4779":36,
	"l_atCpsSrc":37,
	"shootInitLocalPos":38,
	"l_daCrod_Method":39,
	"g_profile_CROD":40,
	"__vt__10cCcD_GStts":41,
	"__vt__10dCcD_GStts":42,
	"__vt__8cM3dGAab":43,
	"__vt__12J3DFrameCtrl":44,
	"data_804A4218":45,
}

