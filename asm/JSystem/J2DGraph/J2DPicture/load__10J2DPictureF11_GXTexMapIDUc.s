lbl_802FF29C:
/* 802FF29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FF2A0  7C 08 02 A6 */	mflr r0
/* 802FF2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF2A8  54 A6 06 3E */	clrlwi r6, r5, 0x18
/* 802FF2AC  88 03 01 08 */	lbz r0, 0x108(r3)
/* 802FF2B0  7C 06 00 40 */	cmplw r6, r0
/* 802FF2B4  40 80 00 24 */	bge lbl_802FF2D8
/* 802FF2B8  28 06 00 02 */	cmplwi r6, 2
/* 802FF2BC  40 80 00 1C */	bge lbl_802FF2D8
/* 802FF2C0  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 802FF2C4  7C 63 02 14 */	add r3, r3, r0
/* 802FF2C8  80 63 01 00 */	lwz r3, 0x100(r3)
/* 802FF2CC  28 03 00 00 */	cmplwi r3, 0
/* 802FF2D0  41 82 00 08 */	beq lbl_802FF2D8
/* 802FF2D4  4B FD F5 6D */	bl load__10JUTTextureF11_GXTexMapID
lbl_802FF2D8:
/* 802FF2D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FF2DC  7C 08 03 A6 */	mtlr r0
/* 802FF2E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802FF2E4  4E 80 00 20 */	blr 
