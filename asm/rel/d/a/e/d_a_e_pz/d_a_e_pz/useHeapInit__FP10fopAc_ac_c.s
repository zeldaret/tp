lbl_807600EC:
/* 807600EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807600F0  7C 08 02 A6 */	mflr r0
/* 807600F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807600F8  4B FF FA 55 */	bl CreateHeap__8daE_PZ_cFv
/* 807600FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80760100  7C 08 03 A6 */	mtlr r0
/* 80760104  38 21 00 10 */	addi r1, r1, 0x10
/* 80760108  4E 80 00 20 */	blr 
