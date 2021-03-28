lbl_8023FFC0:
/* 8023FFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023FFC4  7C 08 02 A6 */	mflr r0
/* 8023FFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023FFCC  80 63 00 F0 */	lwz r3, 0xf0(r3)
/* 8023FFD0  4B FF 9C A9 */	bl setString__17dMsgScrn3Select_cFPcPcPc
/* 8023FFD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023FFD8  7C 08 03 A6 */	mtlr r0
/* 8023FFDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8023FFE0  4E 80 00 20 */	blr 
