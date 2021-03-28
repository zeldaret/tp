lbl_802D3A5C:
/* 802D3A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3A60  7C 08 02 A6 */	mflr r0
/* 802D3A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3A68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D3A6C  93 C1 00 08 */	stw r30, 8(r1)
/* 802D3A70  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D3A74  7C 9F 23 78 */	mr r31, r4
/* 802D3A78  41 82 00 70 */	beq lbl_802D3AE8
/* 802D3A7C  80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 802D3A80  28 03 00 00 */	cmplwi r3, 0
/* 802D3A84  41 82 00 08 */	beq lbl_802D3A8C
/* 802D3A88  4B FF B2 B5 */	bl __dl__FPv
lbl_802D3A8C:
/* 802D3A8C  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 802D3A90  28 03 00 00 */	cmplwi r3, 0
/* 802D3A94  41 82 00 08 */	beq lbl_802D3A9C
/* 802D3A98  4B FF B2 A5 */	bl __dl__FPv
lbl_802D3A9C:
/* 802D3A9C  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 802D3AA0  28 03 00 00 */	cmplwi r3, 0
/* 802D3AA4  41 82 00 0C */	beq lbl_802D3AB0
/* 802D3AA8  38 80 00 00 */	li r4, 0
/* 802D3AAC  4B FF AA 55 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D3AB0:
/* 802D3AB0  34 1E 00 30 */	addic. r0, r30, 0x30
/* 802D3AB4  41 82 00 10 */	beq lbl_802D3AC4
/* 802D3AB8  38 7E 00 30 */	addi r3, r30, 0x30
/* 802D3ABC  38 80 00 00 */	li r4, 0
/* 802D3AC0  48 00 83 55 */	bl __dt__10JSUPtrLinkFv
lbl_802D3AC4:
/* 802D3AC4  34 1E 00 20 */	addic. r0, r30, 0x20
/* 802D3AC8  41 82 00 10 */	beq lbl_802D3AD8
/* 802D3ACC  38 7E 00 20 */	addi r3, r30, 0x20
/* 802D3AD0  38 80 00 00 */	li r4, 0
/* 802D3AD4  48 00 83 41 */	bl __dt__10JSUPtrLinkFv
lbl_802D3AD8:
/* 802D3AD8  7F E0 07 35 */	extsh. r0, r31
/* 802D3ADC  40 81 00 0C */	ble lbl_802D3AE8
/* 802D3AE0  7F C3 F3 78 */	mr r3, r30
/* 802D3AE4  4B FF B2 59 */	bl __dl__FPv
lbl_802D3AE8:
/* 802D3AE8  7F C3 F3 78 */	mr r3, r30
/* 802D3AEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3AF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D3AF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3AF8  7C 08 03 A6 */	mtlr r0
/* 802D3AFC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3B00  4E 80 00 20 */	blr 
