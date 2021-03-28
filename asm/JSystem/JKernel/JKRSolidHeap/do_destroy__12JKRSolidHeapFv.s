lbl_802D0AD0:
/* 802D0AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D0AD4  7C 08 02 A6 */	mflr r0
/* 802D0AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D0ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D0AE0  93 C1 00 08 */	stw r30, 8(r1)
/* 802D0AE4  7C 7E 1B 78 */	mr r30, r3
/* 802D0AE8  80 83 00 50 */	lwz r4, 0x50(r3)
/* 802D0AEC  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 802D0AF0  28 1F 00 00 */	cmplwi r31, 0
/* 802D0AF4  41 82 00 24 */	beq lbl_802D0B18
/* 802D0AF8  38 80 FF FF */	li r4, -1
/* 802D0AFC  81 83 00 00 */	lwz r12, 0(r3)
/* 802D0B00  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D0B04  7D 89 03 A6 */	mtctr r12
/* 802D0B08  4E 80 04 21 */	bctrl 
/* 802D0B0C  7F C3 F3 78 */	mr r3, r30
/* 802D0B10  7F E4 FB 78 */	mr r4, r31
/* 802D0B14  4B FF D9 ED */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D0B18:
/* 802D0B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D0B1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D0B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D0B24  7C 08 03 A6 */	mtlr r0
/* 802D0B28  38 21 00 10 */	addi r1, r1, 0x10
/* 802D0B2C  4E 80 00 20 */	blr 
