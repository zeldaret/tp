lbl_802CECEC:
/* 802CECEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CECF0  7C 08 02 A6 */	mflr r0
/* 802CECF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CECF8  38 A0 00 00 */	li r5, 0
/* 802CECFC  4B FF F7 79 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802CED00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CED04  7C 08 03 A6 */	mtlr r0
/* 802CED08  38 21 00 10 */	addi r1, r1, 0x10
/* 802CED0C  4E 80 00 20 */	blr 
