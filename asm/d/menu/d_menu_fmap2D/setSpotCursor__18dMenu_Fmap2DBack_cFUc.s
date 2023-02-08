lbl_801D1D74:
/* 801D1D74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D1D78  7C 08 02 A6 */	mflr r0
/* 801D1D7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D1D80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D1D84  7C 7F 1B 78 */	mr r31, r3
/* 801D1D88  98 83 12 29 */	stb r4, 0x1229(r3)
/* 801D1D8C  38 A1 00 0C */	addi r5, r1, 0xc
/* 801D1D90  38 C1 00 08 */	addi r6, r1, 8
/* 801D1D94  48 00 0E F5 */	bl getStageOriginPath__18dMenu_Fmap2DBack_cFUcPfPf
/* 801D1D98  7F E3 FB 78 */	mr r3, r31
/* 801D1D9C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801D1DA0  C0 41 00 08 */	lfs f2, 8(r1)
/* 801D1DA4  38 9F 11 84 */	addi r4, r31, 0x1184
/* 801D1DA8  38 BF 11 88 */	addi r5, r31, 0x1188
/* 801D1DAC  4B FF EF 6D */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D1DB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D1DB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D1DB8  7C 08 03 A6 */	mtlr r0
/* 801D1DBC  38 21 00 20 */	addi r1, r1, 0x20
/* 801D1DC0  4E 80 00 20 */	blr 
