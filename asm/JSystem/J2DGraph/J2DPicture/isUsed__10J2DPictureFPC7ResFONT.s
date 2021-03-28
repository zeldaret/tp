lbl_802FF63C:
/* 802FF63C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FF640  7C 08 02 A6 */	mflr r0
/* 802FF644  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF648  4B FF 7E 71 */	bl isUsed__7J2DPaneFPC7ResFONT
/* 802FF64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FF650  7C 08 03 A6 */	mtlr r0
/* 802FF654  38 21 00 10 */	addi r1, r1, 0x10
/* 802FF658  4E 80 00 20 */	blr 
