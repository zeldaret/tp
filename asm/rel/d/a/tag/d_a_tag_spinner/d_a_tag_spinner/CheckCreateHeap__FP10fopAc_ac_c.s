lbl_80D616F8:
/* 80D616F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D616FC  7C 08 02 A6 */	mflr r0
/* 80D61700  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61704  48 00 02 69 */	bl CreateHeap__14daTagSpinner_cFv
/* 80D61708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6170C  7C 08 03 A6 */	mtlr r0
/* 80D61710  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61714  4E 80 00 20 */	blr 
