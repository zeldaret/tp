lbl_802CEC98:
/* 802CEC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CEC9C  7C 08 02 A6 */	mflr r0
/* 802CECA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CECA4  7C 80 23 78 */	mr r0, r4
/* 802CECA8  7C A4 2B 78 */	mr r4, r5
/* 802CECAC  7C 05 03 78 */	mr r5, r0
/* 802CECB0  4B FF F7 C5 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802CECB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CECB8  7C 08 03 A6 */	mtlr r0
/* 802CECBC  38 21 00 10 */	addi r1, r1, 0x10
/* 802CECC0  4E 80 00 20 */	blr 
