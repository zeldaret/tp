lbl_802CECC4:
/* 802CECC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CECC8  7C 08 02 A6 */	mflr r0
/* 802CECCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CECD0  38 80 00 04 */	li r4, 4
/* 802CECD4  38 A0 00 00 */	li r5, 0
/* 802CECD8  4B FF F7 9D */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802CECDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CECE0  7C 08 03 A6 */	mtlr r0
/* 802CECE4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CECE8  4E 80 00 20 */	blr 
