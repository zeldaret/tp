#
# Generate By: dol2asm
# Module: 118
#

# Libraries
LIBRARIES = [
	"d/a/d_a_shop_item",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"unknown_translation_unit_dtors",
	"d_a_shop_item",
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
	{'addr':0x8059E940,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E96C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E998,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059E9B8,'size':588,'pad':0,'label':"getShopArcname__12daShopItem_cFv",'name':"getShopArcname__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059EC04,'size':24,'pad':0,'label':"getHeapSize__12daShopItem_cFv",'name':"getHeapSize__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059EC1C,'size':316,'pad':0,'label':"CreateInit__12daShopItem_cFv",'name':"CreateInit__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059ED58,'size':412,'pad':0,'label':"set_mtx__12daShopItem_cFv",'name':"set_mtx__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059EEF4,'size':84,'pad':0,'label':"_execute__12daShopItem_cFv",'name':"_execute__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059EF48,'size':84,'pad':0,'label':"_draw__12daShopItem_cFv",'name':"_draw__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059EF9C,'size':4,'pad':0,'label':"setListStart__12daShopItem_cFv",'name':"setListStart__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8059EFA0,'size':132,'pad':0,'label':"setShadow__12daShopItem_cFv",'name':"setShadow__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F024,'size':32,'pad':0,'label':"chkFlag__12daShopItem_cFi",'name':"chkFlag__12daShopItem_cFi",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F044,'size':32,'pad':0,'label':"getTevFrm__12daShopItem_cFv",'name':"getTevFrm__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F064,'size':32,'pad':0,'label':"getBtpFrm__12daShopItem_cFv",'name':"getBtpFrm__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F084,'size':28,'pad':0,'label':"getShadowSize__12daShopItem_cFv",'name':"getShadowSize__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F0A0,'size':28,'pad':0,'label':"getCollisionH__12daShopItem_cFv",'name':"getCollisionH__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F0BC,'size':28,'pad':0,'label':"getCollisionR__12daShopItem_cFv",'name':"getCollisionR__12daShopItem_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F0D8,'size':444,'pad':0,'label':"daShopItem_Create__FPv",'name':"daShopItem_Create__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F294,'size':72,'pad':0,'label':"__dt__8cM3dGCylFv",'name':"__dt__8cM3dGCylFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F2DC,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F324,'size':112,'pad':0,'label':"__dt__12dBgS_ObjAcchFv",'name':"__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F394,'size':60,'pad':0,'label':"daShopItem_Delete__FPv",'name':"daShopItem_Delete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F3D0,'size':36,'pad':0,'label':"daShopItem_Draw__FPv",'name':"daShopItem_Draw__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F3F4,'size':36,'pad':0,'label':"daShopItem_Execute__FPv",'name':"daShopItem_Execute__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F418,'size':8,'pad':0,'label':"daShopItem_IsDelete__FPv",'name':"daShopItem_IsDelete__FPv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x8059F420,'size':8,'pad':0,'label':"func_8059F420",'name':"@36@__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':3,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F428,'size':8,'pad':0,'label':"func_8059F428",'name':"@20@__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':3,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x8059F430,'size':4,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8059F434,'size':4,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x8059F438,'size':4,'pad':0,'label':"m_cullfar_max__12daShopItem_c",'name':"m_cullfar_max__12daShopItem_c",'lib':-1,'tu':3,'section':3,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8059F43C,'size':46,'pad':2,'label':"HeapSizeTbl",'name':"HeapSizeTbl$3665",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8059F46C,'size':4,'pad':0,'label':"lit_3718",'name':"@3718",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8059F470,'size':4,'pad':0,'label':"lit_3719",'name':"@3719",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x8059F474,'size':4,'pad':0,'label':"lit_3720",'name':"@3720",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8059F478,'size':4,'pad':0,'label':"lit_3721",'name':"@3721",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8059F47C,'size':4,'pad':0,'label':"lit_3722",'name':"@3722",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8059F480,'size':4,'pad':0,'label':"lit_3723",'name':"@3723",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8059F484,'size':4,'pad':0,'label':"lit_3724",'name':"@3724",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8059F488,'size':4,'pad':0,'label':"lit_3823",'name':"@3823",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x8059F48C,'size':16,'pad':0,'label':"d_a_shop_item__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':3,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x8059F49C,'size':32,'pad':0,'label':"daShopItemMethodTable",'name':"daShopItemMethodTable",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8059F4BC,'size':48,'pad':0,'label':"g_profile_ShopItem",'name':"g_profile_ShopItem",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x8059F4EC,'size':12,'pad':0,'label':"__vt__8cM3dGCyl",'name':"__vt__8cM3dGCyl",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x8059F4F8,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x8059F504,'size':36,'pad':0,'label':"__vt__12dBgS_ObjAcch",'name':"__vt__12dBgS_ObjAcch",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x8059F528,'size':68,'pad':0,'label':"__vt__12daShopItem_c",'name':"__vt__12daShopItem_c",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"getShopArcname__12daShopItem_cFv":3,
	"getHeapSize__12daShopItem_cFv":4,
	"CreateInit__12daShopItem_cFv":5,
	"set_mtx__12daShopItem_cFv":6,
	"_execute__12daShopItem_cFv":7,
	"_draw__12daShopItem_cFv":8,
	"setListStart__12daShopItem_cFv":9,
	"setShadow__12daShopItem_cFv":10,
	"chkFlag__12daShopItem_cFi":11,
	"getTevFrm__12daShopItem_cFv":12,
	"getBtpFrm__12daShopItem_cFv":13,
	"getShadowSize__12daShopItem_cFv":14,
	"getCollisionH__12daShopItem_cFv":15,
	"getCollisionR__12daShopItem_cFv":16,
	"daShopItem_Create__FPv":17,
	"__dt__8cM3dGCylFv":18,
	"__dt__8cM3dGAabFv":19,
	"__dt__12dBgS_ObjAcchFv":20,
	"daShopItem_Delete__FPv":21,
	"daShopItem_Draw__FPv":22,
	"daShopItem_Execute__FPv":23,
	"daShopItem_IsDelete__FPv":24,
	"func_8059F420":25,
	"func_8059F428":26,
	"_ctors":27,
	"_dtors":28,
	"m_cullfar_max__12daShopItem_c":29,
	"HeapSizeTbl":30,
	"lit_3718":31,
	"lit_3719":32,
	"lit_3720":33,
	"lit_3721":34,
	"lit_3722":35,
	"lit_3723":36,
	"lit_3724":37,
	"lit_3823":38,
	"d_a_shop_item__stringBase0":39,
	"daShopItemMethodTable":40,
	"g_profile_ShopItem":41,
	"__vt__8cM3dGCyl":42,
	"__vt__8cM3dGAab":43,
	"__vt__12dBgS_ObjAcch":44,
	"__vt__12daShopItem_c":45,
}

