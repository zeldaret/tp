lbl_802D9260:
/* 802D9260  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D9264  7C 08 02 A6 */	mflr r0
/* 802D9268  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D926C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9270  48 08 8F 69 */	bl _savegpr_28
/* 802D9274  7C 7C 1B 78 */	mr r28, r3
/* 802D9278  80 03 00 44 */	lwz r0, 0x44(r3)
/* 802D927C  28 00 00 00 */	cmplwi r0, 0
/* 802D9280  41 82 00 5C */	beq lbl_802D92DC
/* 802D9284  88 1C 00 3C */	lbz r0, 0x3c(r28)
/* 802D9288  28 00 00 01 */	cmplwi r0, 1
/* 802D928C  41 82 00 50 */	beq lbl_802D92DC
/* 802D9290  83 DC 00 4C */	lwz r30, 0x4c(r28)
/* 802D9294  3B A0 00 00 */	li r29, 0
/* 802D9298  3B E0 00 00 */	li r31, 0
/* 802D929C  48 00 00 30 */	b lbl_802D92CC
lbl_802D92A0:
/* 802D92A0  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D92A4  54 00 46 3E */	srwi r0, r0, 0x18
/* 802D92A8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802D92AC  28 03 00 00 */	cmplwi r3, 0
/* 802D92B0  41 82 00 18 */	beq lbl_802D92C8
/* 802D92B4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 802D92B8  40 82 00 0C */	bne lbl_802D92C4
/* 802D92BC  80 9C 00 38 */	lwz r4, 0x38(r28)
/* 802D92C0  4B FF 52 41 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D92C4:
/* 802D92C4  93 FE 00 10 */	stw r31, 0x10(r30)
lbl_802D92C8:
/* 802D92C8  3B BD 00 01 */	addi r29, r29, 1
lbl_802D92CC:
/* 802D92CC  80 7C 00 44 */	lwz r3, 0x44(r28)
/* 802D92D0  80 03 00 08 */	lwz r0, 8(r3)
/* 802D92D4  7C 1D 00 40 */	cmplw r29, r0
/* 802D92D8  41 80 FF C8 */	blt lbl_802D92A0
lbl_802D92DC:
/* 802D92DC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D92E0  48 08 8F 45 */	bl _restgpr_28
/* 802D92E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D92E8  7C 08 03 A6 */	mtlr r0
/* 802D92EC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D92F0  4E 80 00 20 */	blr 
