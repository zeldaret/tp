lbl_802CED60:
/* 802CED60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CED64  7C 08 02 A6 */	mflr r0
/* 802CED68  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CED6C  38 80 00 00 */	li r4, 0
/* 802CED70  4B FF F7 91 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802CED74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CED78  7C 08 03 A6 */	mtlr r0
/* 802CED7C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CED80  4E 80 00 20 */	blr 
