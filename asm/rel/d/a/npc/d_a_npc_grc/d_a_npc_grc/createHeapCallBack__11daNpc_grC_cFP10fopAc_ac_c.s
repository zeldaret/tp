lbl_809CC0C0:
/* 809CC0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CC0C4  7C 08 02 A6 */	mflr r0
/* 809CC0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CC0CC  4B FF FB 09 */	bl CreateHeap__11daNpc_grC_cFv
/* 809CC0D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CC0D4  7C 08 03 A6 */	mtlr r0
/* 809CC0D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809CC0DC  4E 80 00 20 */	blr 
