lbl_8059EC1C:
/* 8059EC1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059EC20  7C 08 02 A6 */	mflr r0
/* 8059EC24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059EC28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059EC2C  93 C1 00 08 */	stw r30, 8(r1)
/* 8059EC30  7C 7F 1B 78 */	mr r31, r3
/* 8059EC34  3C 80 80 5A */	lis r4, m_cullfar_max__12daShopItem_c@ha /* 0x8059F438@ha */
/* 8059EC38  3B C4 F4 38 */	addi r30, r4, m_cullfar_max__12daShopItem_c@l /* 0x8059F438@l */
/* 8059EC3C  38 1F 09 2C */	addi r0, r31, 0x92c
/* 8059EC40  90 03 05 04 */	stw r0, 0x504(r3)
/* 8059EC44  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8059EC48  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8059EC4C  FC 60 08 90 */	fmr f3, f1
/* 8059EC50  C0 9E 00 3C */	lfs f4, 0x3c(r30)
/* 8059EC54  C0 BE 00 40 */	lfs f5, 0x40(r30)
/* 8059EC58  FC C0 20 90 */	fmr f6, f4
/* 8059EC5C  4B A7 B8 ED */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8059EC60  3C 60 80 45 */	lis r3, mSystemFar__14mDoLib_clipper@ha /* 0x80450C70@ha */
/* 8059EC64  C0 23 0C 70 */	lfs f1, mSystemFar__14mDoLib_clipper@l(r3)  /* 0x80450C70@l */
/* 8059EC68  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8059EC6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059EC70  40 81 00 10 */	ble lbl_8059EC80
/* 8059EC74  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8059EC78  EC 00 08 24 */	fdivs f0, f0, f1
/* 8059EC7C  D0 1F 05 20 */	stfs f0, 0x520(r31)
lbl_8059EC80:
/* 8059EC80  7F E3 FB 78 */	mr r3, r31
/* 8059EC84  4B A9 8D F1 */	bl show__12daItemBase_cFv
/* 8059EC88  3C 60 80 5A */	lis r3, d_a_shop_item__stringBase0@ha /* 0x8059F48C@ha */
/* 8059EC8C  38 63 F4 8C */	addi r3, r3, d_a_shop_item__stringBase0@l /* 0x8059F48C@l */
/* 8059EC90  38 63 00 08 */	addi r3, r3, 8
/* 8059EC94  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059EC98  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059EC9C  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 8059ECA0  4B DC 9C F5 */	bl strcmp
/* 8059ECA4  2C 03 00 00 */	cmpwi r3, 0
/* 8059ECA8  40 82 00 48 */	bne lbl_8059ECF0
/* 8059ECAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059ECB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059ECB4  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 8059ECB8  2C 00 00 01 */	cmpwi r0, 1
/* 8059ECBC  40 82 00 34 */	bne lbl_8059ECF0
/* 8059ECC0  88 1F 09 64 */	lbz r0, 0x964(r31)
/* 8059ECC4  1C 80 00 30 */	mulli r4, r0, 0x30
/* 8059ECC8  3C 60 80 38 */	lis r3, mData__12daShopItem_c@ha /* 0x803792E8@ha */
/* 8059ECCC  38 03 92 E8 */	addi r0, r3, mData__12daShopItem_c@l /* 0x803792E8@l */
/* 8059ECD0  7C 60 22 14 */	add r3, r0, r4
/* 8059ECD4  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8059ECD8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8059ECDC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059ECE0  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8059ECE4  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8059ECE8  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8059ECEC  48 00 00 28 */	b lbl_8059ED14
lbl_8059ECF0:
/* 8059ECF0  88 1F 09 64 */	lbz r0, 0x964(r31)
/* 8059ECF4  1C 80 00 30 */	mulli r4, r0, 0x30
/* 8059ECF8  3C 60 80 38 */	lis r3, mData__12daShopItem_c@ha /* 0x803792E8@ha */
/* 8059ECFC  38 03 92 E8 */	addi r0, r3, mData__12daShopItem_c@l /* 0x803792E8@l */
/* 8059ED00  7C 60 22 14 */	add r3, r0, r4
/* 8059ED04  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8059ED08  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8059ED0C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8059ED10  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
lbl_8059ED14:
/* 8059ED14  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8059ED18  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 8059ED1C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8059ED20  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 8059ED24  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8059ED28  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 8059ED2C  7F E3 FB 78 */	mr r3, r31
/* 8059ED30  48 00 00 29 */	bl set_mtx__12daShopItem_cFv
/* 8059ED34  38 00 00 00 */	li r0, 0
/* 8059ED38  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8059ED3C  90 03 00 14 */	stw r0, 0x14(r3)
/* 8059ED40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059ED44  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059ED48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059ED4C  7C 08 03 A6 */	mtlr r0
/* 8059ED50  38 21 00 10 */	addi r1, r1, 0x10
/* 8059ED54  4E 80 00 20 */	blr 
