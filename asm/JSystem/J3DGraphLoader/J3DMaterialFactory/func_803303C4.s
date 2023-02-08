lbl_803303C4:
/* 803303C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803303C8  7C 08 02 A6 */	mflr r0
/* 803303CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803303D0  2C 05 00 01 */	cmpwi r5, 1
/* 803303D4  41 82 00 34 */	beq lbl_80330408
/* 803303D8  40 80 00 10 */	bge lbl_803303E8
/* 803303DC  2C 05 00 00 */	cmpwi r5, 0
/* 803303E0  40 80 00 14 */	bge lbl_803303F4
/* 803303E4  48 00 00 48 */	b lbl_8033042C
lbl_803303E8:
/* 803303E8  2C 05 00 03 */	cmpwi r5, 3
/* 803303EC  40 80 00 40 */	bge lbl_8033042C
/* 803303F0  48 00 00 2C */	b lbl_8033041C
lbl_803303F4:
/* 803303F4  7C C5 33 78 */	mr r5, r6
/* 803303F8  7C E6 3B 78 */	mr r6, r7
/* 803303FC  48 00 00 45 */	bl createNormalMaterial__18J3DMaterialFactoryCFP11J3DMaterialiUl
/* 80330400  7C 64 1B 78 */	mr r4, r3
/* 80330404  48 00 00 28 */	b lbl_8033042C
lbl_80330408:
/* 80330408  7C C5 33 78 */	mr r5, r6
/* 8033040C  7C E6 3B 78 */	mr r6, r7
/* 80330410  48 00 13 C5 */	bl createLockedMaterial__18J3DMaterialFactoryCFP11J3DMaterialiUl
/* 80330414  7C 64 1B 78 */	mr r4, r3
/* 80330418  48 00 00 14 */	b lbl_8033042C
lbl_8033041C:
/* 8033041C  7C C5 33 78 */	mr r5, r6
/* 80330420  7C E6 3B 78 */	mr r6, r7
/* 80330424  48 00 09 61 */	bl createPatchedMaterial__18J3DMaterialFactoryCFP11J3DMaterialiUl
/* 80330428  7C 64 1B 78 */	mr r4, r3
lbl_8033042C:
/* 8033042C  7C 83 23 78 */	mr r3, r4
/* 80330430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80330434  7C 08 03 A6 */	mtlr r0
/* 80330438  38 21 00 10 */	addi r1, r1, 0x10
/* 8033043C  4E 80 00 20 */	blr 
