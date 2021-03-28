lbl_80248180:
/* 80248180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80248184  7C 08 02 A6 */	mflr r0
/* 80248188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024818C  80 63 00 CC */	lwz r3, 0xcc(r3)
/* 80248190  28 03 00 00 */	cmplwi r3, 0
/* 80248194  41 82 00 08 */	beq lbl_8024819C
/* 80248198  4B FF 1A E1 */	bl setString__17dMsgScrn3Select_cFPcPcPc
lbl_8024819C:
/* 8024819C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802481A0  7C 08 03 A6 */	mtlr r0
/* 802481A4  38 21 00 10 */	addi r1, r1, 0x10
/* 802481A8  4E 80 00 20 */	blr 
