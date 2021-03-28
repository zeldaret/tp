lbl_8059EFA0:
/* 8059EFA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059EFA4  7C 08 02 A6 */	mflr r0
/* 8059EFA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059EFAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059EFB0  7C 7F 1B 78 */	mr r31, r3
/* 8059EFB4  3C 80 80 5A */	lis r4, m_cullfar_max__12daShopItem_c@ha
/* 8059EFB8  39 44 F4 38 */	addi r10, r4, m_cullfar_max__12daShopItem_c@l
/* 8059EFBC  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 8059EFC0  28 00 00 FF */	cmplwi r0, 0xff
/* 8059EFC4  41 82 00 0C */	beq lbl_8059EFD0
/* 8059EFC8  4B BA 5D A8 */	b setShadow__12daItemBase_cFv
/* 8059EFCC  48 00 00 44 */	b lbl_8059F010
lbl_8059EFD0:
/* 8059EFD0  80 7F 09 1C */	lwz r3, 0x91c(r31)
/* 8059EFD4  38 80 00 01 */	li r4, 1
/* 8059EFD8  80 BF 05 74 */	lwz r5, 0x574(r31)
/* 8059EFDC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8059EFE0  C0 2A 00 50 */	lfs f1, 0x50(r10)
/* 8059EFE4  C0 4A 00 38 */	lfs f2, 0x38(r10)
/* 8059EFE8  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8059EFEC  C0 9F 06 24 */	lfs f4, 0x624(r31)
/* 8059EFF0  38 FF 06 7C */	addi r7, r31, 0x67c
/* 8059EFF4  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8059EFF8  39 20 00 00 */	li r9, 0
/* 8059EFFC  C0 AA 00 44 */	lfs f5, 0x44(r10)
/* 8059F000  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8059F004  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8059F008  4B A8 F9 08 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8059F00C  90 7F 09 1C */	stw r3, 0x91c(r31)
lbl_8059F010:
/* 8059F010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059F014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F018  7C 08 03 A6 */	mtlr r0
/* 8059F01C  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F020  4E 80 00 20 */	blr 
