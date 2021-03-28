lbl_802D0A24:
/* 802D0A24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0A28  7C 08 02 A6 */	mflr r0
/* 802D0A2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0A30  39 61 00 20 */	addi r11, r1, 0x20
/* 802D0A34  48 09 17 A9 */	bl _savegpr_29
/* 802D0A38  7C 9D 23 79 */	or. r29, r4, r4
/* 802D0A3C  7C BE 2B 78 */	mr r30, r5
/* 802D0A40  40 82 00 08 */	bne lbl_802D0A48
/* 802D0A44  83 AD 8D F8 */	lwz r29, sRootHeap__7JKRHeap(r13)
lbl_802D0A48:
/* 802D0A48  3C 03 00 01 */	addis r0, r3, 1
/* 802D0A4C  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D0A50  40 82 00 10 */	bne lbl_802D0A60
/* 802D0A54  7F A3 EB 78 */	mr r3, r29
/* 802D0A58  38 80 00 10 */	li r4, 0x10
/* 802D0A5C  4B FF DD 81 */	bl getMaxAllocatableSize__7JKRHeapFi
lbl_802D0A60:
/* 802D0A60  54 7F 00 36 */	rlwinm r31, r3, 0, 0, 0x1b
/* 802D0A64  28 1F 00 80 */	cmplwi r31, 0x80
/* 802D0A68  40 80 00 0C */	bge lbl_802D0A74
/* 802D0A6C  38 60 00 00 */	li r3, 0
/* 802D0A70  48 00 00 48 */	b lbl_802D0AB8
lbl_802D0A74:
/* 802D0A74  7F E3 FB 78 */	mr r3, r31
/* 802D0A78  38 80 00 10 */	li r4, 0x10
/* 802D0A7C  7F A5 EB 78 */	mr r5, r29
/* 802D0A80  4B FF D9 F5 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D0A84  7C 60 1B 78 */	mr r0, r3
/* 802D0A88  7C 05 03 79 */	or. r5, r0, r0
/* 802D0A8C  38 85 00 80 */	addi r4, r5, 0x80
/* 802D0A90  40 82 00 0C */	bne lbl_802D0A9C
/* 802D0A94  38 60 00 00 */	li r3, 0
/* 802D0A98  48 00 00 20 */	b lbl_802D0AB8
lbl_802D0A9C:
/* 802D0A9C  41 82 00 18 */	beq lbl_802D0AB4
/* 802D0AA0  38 BF FF 80 */	addi r5, r31, -128
/* 802D0AA4  7F A6 EB 78 */	mr r6, r29
/* 802D0AA8  7F C7 F3 78 */	mr r7, r30
/* 802D0AAC  48 00 00 85 */	bl __ct__12JKRSolidHeapFPvUlP7JKRHeapb
/* 802D0AB0  7C 60 1B 78 */	mr r0, r3
lbl_802D0AB4:
/* 802D0AB4  7C 03 03 78 */	mr r3, r0
lbl_802D0AB8:
/* 802D0AB8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D0ABC  48 09 17 6D */	bl _restgpr_29
/* 802D0AC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0AC4  7C 08 03 A6 */	mtlr r0
/* 802D0AC8  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0ACC  4E 80 00 20 */	blr 
