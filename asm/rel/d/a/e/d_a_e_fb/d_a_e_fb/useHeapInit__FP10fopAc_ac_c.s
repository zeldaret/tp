lbl_806B88C0:
/* 806B88C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B88C4  7C 08 02 A6 */	mflr r0
/* 806B88C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B88CC  4B FF FD AD */	bl CreateHeap__8daE_FB_cFv
/* 806B88D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B88D4  7C 08 03 A6 */	mtlr r0
/* 806B88D8  38 21 00 10 */	addi r1, r1, 0x10
/* 806B88DC  4E 80 00 20 */	blr 
