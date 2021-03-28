lbl_8024002C:
/* 8024002C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80240030  7C 08 02 A6 */	mflr r0
/* 80240034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80240038  7C 68 1B 78 */	mr r8, r3
/* 8024003C  7C C7 33 78 */	mr r7, r6
/* 80240040  80 63 00 F0 */	lwz r3, 0xf0(r3)
/* 80240044  88 C8 01 9C */	lbz r6, 0x19c(r8)
/* 80240048  4B FF A0 4D */	bl selAnimeInit__17dMsgScrn3Select_cFUcUcUcfUc
/* 8024004C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80240050  7C 08 03 A6 */	mtlr r0
/* 80240054  38 21 00 10 */	addi r1, r1, 0x10
/* 80240058  4E 80 00 20 */	blr 
