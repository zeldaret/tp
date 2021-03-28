lbl_806AD428:
/* 806AD428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AD42C  7C 08 02 A6 */	mflr r0
/* 806AD430  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AD434  4B FF F9 E1 */	bl create__8daE_DK_cFv
/* 806AD438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AD43C  7C 08 03 A6 */	mtlr r0
/* 806AD440  38 21 00 10 */	addi r1, r1, 0x10
/* 806AD444  4E 80 00 20 */	blr 
