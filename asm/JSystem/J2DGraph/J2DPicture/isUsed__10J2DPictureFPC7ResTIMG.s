lbl_802FF09C:
/* 802FF09C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FF0A0  7C 08 02 A6 */	mflr r0
/* 802FF0A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF0A8  38 E0 00 00 */	li r7, 0
/* 802FF0AC  88 C3 01 08 */	lbz r6, 0x108(r3)
/* 802FF0B0  48 00 00 30 */	b lbl_802FF0E0
lbl_802FF0B4:
/* 802FF0B4  54 E5 15 BA */	rlwinm r5, r7, 2, 0x16, 0x1d
/* 802FF0B8  38 05 01 00 */	addi r0, r5, 0x100
/* 802FF0BC  7C A3 00 2E */	lwzx r5, r3, r0
/* 802FF0C0  28 05 00 00 */	cmplwi r5, 0
/* 802FF0C4  41 82 00 18 */	beq lbl_802FF0DC
/* 802FF0C8  80 05 00 20 */	lwz r0, 0x20(r5)
/* 802FF0CC  7C 00 20 40 */	cmplw r0, r4
/* 802FF0D0  40 82 00 0C */	bne lbl_802FF0DC
/* 802FF0D4  38 60 00 01 */	li r3, 1
/* 802FF0D8  48 00 00 18 */	b lbl_802FF0F0
lbl_802FF0DC:
/* 802FF0DC  38 E7 00 01 */	addi r7, r7, 1
lbl_802FF0E0:
/* 802FF0E0  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802FF0E4  7C 00 30 40 */	cmplw r0, r6
/* 802FF0E8  41 80 FF CC */	blt lbl_802FF0B4
/* 802FF0EC  4B FF 83 45 */	bl isUsed__7J2DPaneFPC7ResTIMG
lbl_802FF0F0:
/* 802FF0F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FF0F4  7C 08 03 A6 */	mtlr r0
/* 802FF0F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802FF0FC  4E 80 00 20 */	blr 
