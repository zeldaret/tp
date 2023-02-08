lbl_80331A7C:
/* 80331A7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80331A80  7C 08 02 A6 */	mflr r0
/* 80331A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80331A88  38 00 00 00 */	li r0, 0
/* 80331A8C  2C 05 00 01 */	cmpwi r5, 1
/* 80331A90  41 82 00 34 */	beq lbl_80331AC4
/* 80331A94  40 80 00 10 */	bge lbl_80331AA4
/* 80331A98  2C 05 00 00 */	cmpwi r5, 0
/* 80331A9C  40 80 00 14 */	bge lbl_80331AB0
/* 80331AA0  48 00 00 48 */	b lbl_80331AE8
lbl_80331AA4:
/* 80331AA4  2C 05 00 03 */	cmpwi r5, 3
/* 80331AA8  40 80 00 40 */	bge lbl_80331AE8
/* 80331AAC  48 00 00 2C */	b lbl_80331AD8
lbl_80331AB0:
/* 80331AB0  7C C5 33 78 */	mr r5, r6
/* 80331AB4  7C E6 3B 78 */	mr r6, r7
/* 80331AB8  48 00 00 45 */	bl calcSizeNormalMaterial__18J3DMaterialFactoryCFP11J3DMaterialiUl
/* 80331ABC  7C 60 1B 78 */	mr r0, r3
/* 80331AC0  48 00 00 28 */	b lbl_80331AE8
lbl_80331AC4:
/* 80331AC4  7C C5 33 78 */	mr r5, r6
/* 80331AC8  7C E6 3B 78 */	mr r6, r7
/* 80331ACC  48 00 02 35 */	bl calcSizeLockedMaterial__18J3DMaterialFactoryCFP11J3DMaterialiUl
/* 80331AD0  7C 60 1B 78 */	mr r0, r3
/* 80331AD4  48 00 00 14 */	b lbl_80331AE8
lbl_80331AD8:
/* 80331AD8  7C C5 33 78 */	mr r5, r6
/* 80331ADC  7C E6 3B 78 */	mr r6, r7
/* 80331AE0  48 00 01 51 */	bl calcSizePatchedMaterial__18J3DMaterialFactoryCFP11J3DMaterialiUl
/* 80331AE4  7C 60 1B 78 */	mr r0, r3
lbl_80331AE8:
/* 80331AE8  7C 03 03 78 */	mr r3, r0
/* 80331AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80331AF0  7C 08 03 A6 */	mtlr r0
/* 80331AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80331AF8  4E 80 00 20 */	blr 
