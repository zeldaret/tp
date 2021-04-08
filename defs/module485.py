#
# Generate By: dol2asm
# Module: 485
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_inobone",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_obj_inobone",
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
	{'addr':0x80C27640,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C2766C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C27698,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C276B8,'size':92,'pad':0,'label':"bornTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf",'name':"bornTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C27714,'size':108,'pad':0,'label':"bornCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf",'name':"bornCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C27780,'size':144,'pad':0,'label':"s_boar_sub__FPvPv",'name':"s_boar_sub__FPvPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C27810,'size':32,'pad':0,'label':"CheckCreateHeap__FP10fopAc_ac_c",'name':"CheckCreateHeap__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C27830,'size':60,'pad':0,'label':"initBaseMtx__12daObjIBone_cFv",'name':"initBaseMtx__12daObjIBone_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C2786C,'size':96,'pad':0,'label':"setBaseMtx__12daObjIBone_cFv",'name':"setBaseMtx__12daObjIBone_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C278CC,'size':220,'pad':0,'label':"Create__12daObjIBone_cFv",'name':"Create__12daObjIBone_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C279A8,'size':120,'pad':0,'label':"CreateHeap__12daObjIBone_cFv",'name':"CreateHeap__12daObjIBone_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C27A20,'size':412,'pad':0,'label':"create__12daObjIBone_cFv",'name':"create__12daObjIBone_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C27BBC,'size':72,'pad':0,'label':"__dt__8cM3dGCylFv",'name':"__dt__8cM3dGCylFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C27C04,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C27C4C,'size':508,'pad':0,'label':"execute__12daObjIBone_cFv",'name':"execute__12daObjIBone_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C27E48,'size':420,'pad':0,'label':"setBreakEffect__12daObjIBone_cFv",'name':"setBreakEffect__12daObjIBone_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C27FEC,'size':100,'pad':0,'label':"draw__12daObjIBone_cFv",'name':"draw__12daObjIBone_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C28050,'size':72,'pad':0,'label':"_delete__12daObjIBone_cFv",'name':"_delete__12daObjIBone_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C28098,'size':32,'pad':0,'label':"daObjIBone_Draw__FP12daObjIBone_c",'name':"daObjIBone_Draw__FP12daObjIBone_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C280B8,'size':32,'pad':0,'label':"daObjIBone_Execute__FP12daObjIBone_c",'name':"daObjIBone_Execute__FP12daObjIBone_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C280D8,'size':32,'pad':0,'label':"daObjIBone_Delete__FP12daObjIBone_c",'name':"daObjIBone_Delete__FP12daObjIBone_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C280F8,'size':32,'pad':0,'label':"daObjIBone_Create__FP10fopAc_ac_c",'name':"daObjIBone_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80C28118,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80C2811C,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80C28120,'size':68,'pad':0,'label':"l_cyl_src",'name':"l_cyl_src",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C28164,'size':68,'pad':0,'label':"l_cyl_src2",'name':"l_cyl_src2",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C281A8,'size':4,'pad':0,'label':"lit_3693",'name':"@3693",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C281AC,'size':4,'pad':0,'label':"lit_3694",'name':"@3694",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C281B0,'size':4,'pad':0,'label':"lit_3738",'name':"@3738",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C281B4,'size':4,'pad':0,'label':"lit_3926",'name':"@3926",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C281B8,'size':2,'pad':2,'label':"particle_id",'name':"particle_id$3930",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80C281BC,'size':4,'pad':0,'label':"lit_3963",'name':"@3963",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C281C0,'size':4,'pad':0,'label':"lit_3964",'name':"@3964",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80C281C4,'size':49,'pad':0,'label':"d_a_obj_inobone__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80C281F8,'size':4,'pad':0,'label':"l_arcName",'name':"l_arcName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C281FC,'size':4,'pad':0,'label':"l_bmdName",'name':"l_bmdName",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C28200,'size':32,'pad':0,'label':"l_daObjIBone_Method",'name':"l_daObjIBone_Method",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C28220,'size':48,'pad':0,'label':"g_profile_Obj_InoBone",'name':"g_profile_Obj_InoBone",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80C28250,'size':12,'pad':0,'label':"__vt__8cM3dGCyl",'name':"__vt__8cM3dGCyl",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80C2825C,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"bornTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf":3,
	"bornCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf":4,
	"s_boar_sub__FPvPv":5,
	"CheckCreateHeap__FP10fopAc_ac_c":6,
	"initBaseMtx__12daObjIBone_cFv":7,
	"setBaseMtx__12daObjIBone_cFv":8,
	"Create__12daObjIBone_cFv":9,
	"CreateHeap__12daObjIBone_cFv":10,
	"create__12daObjIBone_cFv":11,
	"__dt__8cM3dGCylFv":12,
	"__dt__8cM3dGAabFv":13,
	"execute__12daObjIBone_cFv":14,
	"setBreakEffect__12daObjIBone_cFv":15,
	"draw__12daObjIBone_cFv":16,
	"_delete__12daObjIBone_cFv":17,
	"daObjIBone_Draw__FP12daObjIBone_c":18,
	"daObjIBone_Execute__FP12daObjIBone_c":19,
	"daObjIBone_Delete__FP12daObjIBone_c":20,
	"daObjIBone_Create__FP10fopAc_ac_c":21,
	"_ctors":22,
	"_dtors":23,
	"l_cyl_src":24,
	"l_cyl_src2":25,
	"lit_3693":26,
	"lit_3694":27,
	"lit_3738":28,
	"lit_3926":29,
	"particle_id":30,
	"lit_3963":31,
	"lit_3964":32,
	"d_a_obj_inobone__stringBase0":33,
	"l_arcName":34,
	"l_bmdName":35,
	"l_daObjIBone_Method":36,
	"g_profile_Obj_InoBone":37,
	"__vt__8cM3dGCyl":38,
	"__vt__8cM3dGAab":39,
}

