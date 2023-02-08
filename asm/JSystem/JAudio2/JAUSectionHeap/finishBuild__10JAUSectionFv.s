lbl_802A50F8:
/* 802A50F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A50FC  7C 08 02 A6 */	mflr r0
/* 802A5100  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A5104  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A5108  7C 7F 1B 78 */	mr r31, r3
/* 802A510C  80 63 00 30 */	lwz r3, 0x30(r3)
/* 802A5110  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A5114  48 02 93 25 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5118  90 61 00 08 */	stw r3, 8(r1)
/* 802A511C  48 02 93 1D */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5120  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802A5124  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A5128  48 02 96 05 */	bl getFreeSize__7JKRHeapFv
/* 802A512C  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 802A5130  7C 03 00 50 */	subf r0, r3, r0
/* 802A5134  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 802A5138  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802A513C  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A5140  48 02 94 B9 */	bl freeTail__7JKRHeapFv
/* 802A5144  38 00 00 00 */	li r0, 0
/* 802A5148  98 1F 00 2C */	stb r0, 0x2c(r31)
/* 802A514C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A5150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A5154  7C 08 03 A6 */	mtlr r0
/* 802A5158  38 21 00 20 */	addi r1, r1, 0x20
/* 802A515C  4E 80 00 20 */	blr 
