lbl_806C0CB0:
/* 806C0CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C0CB4  7C 08 02 A6 */	mflr r0
/* 806C0CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C0CBC  4B FF FF 6D */	bl CreateHeap__8daE_FZ_cFv
/* 806C0CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C0CC4  7C 08 03 A6 */	mtlr r0
/* 806C0CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 806C0CCC  4E 80 00 20 */	blr 
