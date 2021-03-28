lbl_8023FFE4:
/* 8023FFE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023FFE8  7C 08 02 A6 */	mflr r0
/* 8023FFEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023FFF0  80 63 00 F0 */	lwz r3, 0xf0(r3)
/* 8023FFF4  4B FF 9D 15 */	bl setRubyString__17dMsgScrn3Select_cFPcPcPc
/* 8023FFF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023FFFC  7C 08 03 A6 */	mtlr r0
/* 80240000  38 21 00 10 */	addi r1, r1, 0x10
/* 80240004  4E 80 00 20 */	blr 
