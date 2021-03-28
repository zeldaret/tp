lbl_802F99C8:
/* 802F99C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F99CC  7C 08 02 A6 */	mflr r0
/* 802F99D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F99D4  4B FF E7 45 */	bl setVisibileAnimation__7J2DPaneFP20J2DAnmVisibilityFull
/* 802F99D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F99DC  7C 08 03 A6 */	mtlr r0
/* 802F99E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802F99E4  4E 80 00 20 */	blr 
