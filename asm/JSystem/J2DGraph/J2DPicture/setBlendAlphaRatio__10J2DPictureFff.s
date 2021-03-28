lbl_802FEA9C:
/* 802FEA9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FEAA0  7C 08 02 A6 */	mflr r0
/* 802FEAA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FEAA8  D0 23 01 24 */	stfs f1, 0x124(r3)
/* 802FEAAC  D0 43 01 28 */	stfs f2, 0x128(r3)
/* 802FEAB0  48 00 00 E5 */	bl setBlendKonstAlpha__10J2DPictureFv
/* 802FEAB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FEAB8  7C 08 03 A6 */	mtlr r0
/* 802FEABC  38 21 00 10 */	addi r1, r1, 0x10
/* 802FEAC0  4E 80 00 20 */	blr 
