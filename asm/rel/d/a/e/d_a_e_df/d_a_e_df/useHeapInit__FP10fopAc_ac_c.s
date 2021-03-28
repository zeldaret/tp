lbl_806A7808:
/* 806A7808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A780C  7C 08 02 A6 */	mflr r0
/* 806A7810  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A7814  4B FF FE FD */	bl CreateHeap__8daE_DF_cFv
/* 806A7818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A781C  7C 08 03 A6 */	mtlr r0
/* 806A7820  38 21 00 10 */	addi r1, r1, 0x10
/* 806A7824  4E 80 00 20 */	blr 
