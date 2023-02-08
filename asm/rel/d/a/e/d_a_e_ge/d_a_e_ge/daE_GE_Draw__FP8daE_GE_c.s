lbl_806C7C8C:
/* 806C7C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C7C90  7C 08 02 A6 */	mflr r0
/* 806C7C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C7C98  4B FF FF 21 */	bl draw__8daE_GE_cFv
/* 806C7C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C7CA0  7C 08 03 A6 */	mtlr r0
/* 806C7CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 806C7CA8  4E 80 00 20 */	blr 
