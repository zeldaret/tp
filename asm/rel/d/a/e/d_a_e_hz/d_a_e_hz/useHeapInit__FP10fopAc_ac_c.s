lbl_806EFB34:
/* 806EFB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EFB38  7C 08 02 A6 */	mflr r0
/* 806EFB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EFB40  4B FF FD 8D */	bl CreateHeap__8daE_HZ_cFv
/* 806EFB44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EFB48  7C 08 03 A6 */	mtlr r0
/* 806EFB4C  38 21 00 10 */	addi r1, r1, 0x10
/* 806EFB50  4E 80 00 20 */	blr 
