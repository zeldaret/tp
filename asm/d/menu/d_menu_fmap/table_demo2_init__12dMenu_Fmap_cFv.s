lbl_801CAA78:
/* 801CAA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CAA7C  7C 08 02 A6 */	mflr r0
/* 801CAA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CAA84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CAA88  7C 7F 1B 78 */	mr r31, r3
/* 801CAA8C  38 00 FF F6 */	li r0, -10
/* 801CAA90  B0 03 02 14 */	sth r0, 0x214(r3)
/* 801CAA94  38 80 00 01 */	li r4, 1
/* 801CAA98  48 00 2B 35 */	bl tableArrowPosInit__12dMenu_Fmap_cFb
/* 801CAA9C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CAAA0  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CAAA4  48 00 69 D5 */	bl zoomMapCalc2__18dMenu_Fmap2DBack_cFf
/* 801CAAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CAAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CAAB0  7C 08 03 A6 */	mtlr r0
/* 801CAAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 801CAAB8  4E 80 00 20 */	blr 
