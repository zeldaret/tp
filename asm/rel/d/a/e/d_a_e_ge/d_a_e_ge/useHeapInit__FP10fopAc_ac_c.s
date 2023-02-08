lbl_806CC370:
/* 806CC370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CC374  7C 08 02 A6 */	mflr r0
/* 806CC378  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CC37C  4B FF FE FD */	bl CreateHeap__8daE_GE_cFv
/* 806CC380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CC384  7C 08 03 A6 */	mtlr r0
/* 806CC388  38 21 00 10 */	addi r1, r1, 0x10
/* 806CC38C  4E 80 00 20 */	blr 
