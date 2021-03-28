lbl_800BFF70:
/* 800BFF70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BFF74  7C 08 02 A6 */	mflr r0
/* 800BFF78  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BFF7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BFF80  93 C1 00 08 */	stw r30, 8(r1)
/* 800BFF84  83 E5 00 04 */	lwz r31, 4(r5)
/* 800BFF88  38 A0 04 00 */	li r5, 0x400
/* 800BFF8C  4B FF FF 79 */	bl loadAram__9daAlink_cFUsUl
/* 800BFF90  7C 7E 1B 78 */	mr r30, r3
/* 800BFF94  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BFF98  D0 03 00 08 */	stfs f0, 8(r3)
/* 800BFF9C  7F E4 FB 78 */	mr r4, r31
/* 800BFFA0  48 26 B8 DD */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 800BFFA4  38 7F 00 58 */	addi r3, r31, 0x58
/* 800BFFA8  7F C4 F3 78 */	mr r4, r30
/* 800BFFAC  48 26 FE C5 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800BFFB0  7F C3 F3 78 */	mr r3, r30
/* 800BFFB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BFFB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BFFBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BFFC0  7C 08 03 A6 */	mtlr r0
/* 800BFFC4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BFFC8  4E 80 00 20 */	blr 
