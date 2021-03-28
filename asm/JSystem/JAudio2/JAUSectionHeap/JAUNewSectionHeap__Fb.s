lbl_802A5F9C:
/* 802A5F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5FA0  7C 08 02 A6 */	mflr r0
/* 802A5FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5FAC  7C 7F 1B 78 */	mr r31, r3
/* 802A5FB0  80 6D 8C 90 */	lwz r3, JASDram(r13)
/* 802A5FB4  48 02 87 79 */	bl getFreeSize__7JKRHeapFv
/* 802A5FB8  80 8D 8C 90 */	lwz r4, JASDram(r13)
/* 802A5FBC  38 A0 00 01 */	li r5, 1
/* 802A5FC0  48 02 AA 65 */	bl create__12JKRSolidHeapFUlP7JKRHeapb
/* 802A5FC4  7F E4 FB 78 */	mr r4, r31
/* 802A5FC8  4B FF FF 5D */	bl JAUNewSectionHeap__FP12JKRSolidHeapb
/* 802A5FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5FD4  7C 08 03 A6 */	mtlr r0
/* 802A5FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5FDC  4E 80 00 20 */	blr 
