lbl_802D92F4:
/* 802D92F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D92F8  7C 08 02 A6 */	mflr r0
/* 802D92FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D9300  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9304  48 08 8E D9 */	bl _savegpr_29
/* 802D9308  7C 7D 1B 78 */	mr r29, r3
/* 802D930C  7C 9E 23 78 */	mr r30, r4
/* 802D9310  4B FF D4 25 */	bl findPtrResource__10JKRArchiveCFPCv
/* 802D9314  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D9318  40 82 00 0C */	bne lbl_802D9324
/* 802D931C  38 60 00 00 */	li r3, 0
/* 802D9320  48 00 00 28 */	b lbl_802D9348
lbl_802D9324:
/* 802D9324  80 1F 00 04 */	lwz r0, 4(r31)
/* 802D9328  54 00 46 F7 */	rlwinm. r0, r0, 8, 0x1b, 0x1b
/* 802D932C  40 82 00 10 */	bne lbl_802D933C
/* 802D9330  7F C3 F3 78 */	mr r3, r30
/* 802D9334  80 9D 00 38 */	lwz r4, 0x38(r29)
/* 802D9338  4B FF 51 C9 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D933C:
/* 802D933C  38 00 00 00 */	li r0, 0
/* 802D9340  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802D9344  38 60 00 01 */	li r3, 1
lbl_802D9348:
/* 802D9348  39 61 00 20 */	addi r11, r1, 0x20
/* 802D934C  48 08 8E DD */	bl _restgpr_29
/* 802D9350  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D9354  7C 08 03 A6 */	mtlr r0
/* 802D9358  38 21 00 20 */	addi r1, r1, 0x20
/* 802D935C  4E 80 00 20 */	blr 
