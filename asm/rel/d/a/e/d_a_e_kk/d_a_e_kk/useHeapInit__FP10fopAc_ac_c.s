lbl_806FE698:
/* 806FE698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FE69C  7C 08 02 A6 */	mflr r0
/* 806FE6A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FE6A4  4B FF FD DD */	bl CreateHeap__8daE_KK_cFv
/* 806FE6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FE6AC  7C 08 03 A6 */	mtlr r0
/* 806FE6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 806FE6B4  4E 80 00 20 */	blr 
