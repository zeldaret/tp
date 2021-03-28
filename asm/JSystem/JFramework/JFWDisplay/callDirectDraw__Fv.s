lbl_80272260:
/* 80272260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272264  7C 08 02 A6 */	mflr r0
/* 80272268  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027226C  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 80272270  80 63 00 04 */	lwz r3, 4(r3)
/* 80272274  A0 A3 00 04 */	lhz r5, 4(r3)
/* 80272278  A0 C3 00 06 */	lhz r6, 6(r3)
/* 8027227C  80 6D 8F D0 */	lwz r3, sManager__6JUTXfb(r13)
/* 80272280  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80272284  2C 00 00 00 */	cmpwi r0, 0
/* 80272288  41 80 00 10 */	blt lbl_80272298
/* 8027228C  54 00 10 3A */	slwi r0, r0, 2
/* 80272290  7C 83 00 2E */	lwzx r4, r3, r0
/* 80272294  48 00 00 08 */	b lbl_8027229C
lbl_80272298:
/* 80272298  38 80 00 00 */	li r4, 0
lbl_8027229C:
/* 8027229C  80 6D 8F A8 */	lwz r3, sDirectPrint__14JUTDirectPrint(r13)
/* 802722A0  48 07 22 CD */	bl changeFrameBuffer__14JUTDirectPrintFPvUsUs
/* 802722A4  48 07 26 F9 */	bl flushMessage__12JUTAssertionFv
/* 802722A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802722AC  7C 08 03 A6 */	mtlr r0
/* 802722B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802722B4  4E 80 00 20 */	blr 
