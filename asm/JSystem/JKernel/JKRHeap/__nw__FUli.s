lbl_802CEC74:
/* 802CEC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CEC78  7C 08 02 A6 */	mflr r0
/* 802CEC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CEC80  38 A0 00 00 */	li r5, 0
/* 802CEC84  4B FF F7 F1 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802CEC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CEC8C  7C 08 03 A6 */	mtlr r0
/* 802CEC90  38 21 00 10 */	addi r1, r1, 0x10
/* 802CEC94  4E 80 00 20 */	blr 
