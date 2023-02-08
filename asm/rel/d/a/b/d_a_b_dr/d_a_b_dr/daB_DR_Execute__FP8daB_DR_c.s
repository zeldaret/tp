lbl_805C5588:
/* 805C5588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C558C  7C 08 02 A6 */	mflr r0
/* 805C5590  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C5594  4B FF FB 5D */	bl execute__8daB_DR_cFv
/* 805C5598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C559C  7C 08 03 A6 */	mtlr r0
/* 805C55A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805C55A4  4E 80 00 20 */	blr 
