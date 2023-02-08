lbl_802481AC:
/* 802481AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802481B0  7C 08 02 A6 */	mflr r0
/* 802481B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802481B8  80 63 00 CC */	lwz r3, 0xcc(r3)
/* 802481BC  28 03 00 00 */	cmplwi r3, 0
/* 802481C0  41 82 00 08 */	beq lbl_802481C8
/* 802481C4  4B FF 1B 45 */	bl setRubyString__17dMsgScrn3Select_cFPcPcPc
lbl_802481C8:
/* 802481C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802481CC  7C 08 03 A6 */	mtlr r0
/* 802481D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802481D4  4E 80 00 20 */	blr 
