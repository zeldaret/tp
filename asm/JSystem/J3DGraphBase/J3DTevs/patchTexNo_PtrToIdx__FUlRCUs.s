lbl_8032413C:
/* 8032413C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80324140  7C 08 02 A6 */	mflr r0
/* 80324144  90 01 00 14 */	stw r0, 0x14(r1)
/* 80324148  A0 84 00 00 */	lhz r4, 0(r4)
/* 8032414C  4B FE A5 C1 */	bl J3DGDSetTexImgPtrRaw__F11_GXTexMapIDUl
/* 80324150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80324154  7C 08 03 A6 */	mtlr r0
/* 80324158  38 21 00 10 */	addi r1, r1, 0x10
/* 8032415C  4E 80 00 20 */	blr 
