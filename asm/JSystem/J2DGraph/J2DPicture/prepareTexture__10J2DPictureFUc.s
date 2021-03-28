lbl_802FD098:
/* 802FD098  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FD09C  7C 08 02 A6 */	mflr r0
/* 802FD0A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FD0A4  39 61 00 20 */	addi r11, r1, 0x20
/* 802FD0A8  48 06 51 31 */	bl _savegpr_28
/* 802FD0AC  7C 7C 1B 78 */	mr r28, r3
/* 802FD0B0  3B A0 00 00 */	li r29, 0
/* 802FD0B4  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 802FD0B8  48 00 00 88 */	b lbl_802FD140
lbl_802FD0BC:
/* 802FD0BC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802FD0C0  28 00 00 02 */	cmplwi r0, 2
/* 802FD0C4  41 80 00 0C */	blt lbl_802FD0D0
/* 802FD0C8  38 60 00 00 */	li r3, 0
/* 802FD0CC  48 00 00 84 */	b lbl_802FD150
lbl_802FD0D0:
/* 802FD0D0  57 A3 15 BA */	rlwinm r3, r29, 2, 0x16, 0x1d
/* 802FD0D4  3B C3 01 00 */	addi r30, r3, 0x100
/* 802FD0D8  7C 1C F0 2E */	lwzx r0, r28, r30
/* 802FD0DC  28 00 00 00 */	cmplwi r0, 0
/* 802FD0E0  40 82 00 5C */	bne lbl_802FD13C
/* 802FD0E4  38 60 00 40 */	li r3, 0x40
/* 802FD0E8  4B FD 1B 65 */	bl __nw__FUl
/* 802FD0EC  28 03 00 00 */	cmplwi r3, 0
/* 802FD0F0  41 82 00 1C */	beq lbl_802FD10C
/* 802FD0F4  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 802FD0F8  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802FD0FC  98 03 00 3B */	stb r0, 0x3b(r3)
/* 802FD100  38 00 00 00 */	li r0, 0
/* 802FD104  90 03 00 28 */	stw r0, 0x28(r3)
/* 802FD108  90 03 00 20 */	stw r0, 0x20(r3)
lbl_802FD10C:
/* 802FD10C  7C 7C F1 2E */	stwx r3, r28, r30
/* 802FD110  7C 1C F0 2E */	lwzx r0, r28, r30
/* 802FD114  28 00 00 00 */	cmplwi r0, 0
/* 802FD118  40 82 00 0C */	bne lbl_802FD124
/* 802FD11C  38 60 00 00 */	li r3, 0
/* 802FD120  48 00 00 30 */	b lbl_802FD150
lbl_802FD124:
/* 802FD124  88 9C 01 09 */	lbz r4, 0x109(r28)
/* 802FD128  38 60 00 01 */	li r3, 1
/* 802FD12C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802FD130  7C 60 00 30 */	slw r0, r3, r0
/* 802FD134  7C 80 03 78 */	or r0, r4, r0
/* 802FD138  98 1C 01 09 */	stb r0, 0x109(r28)
lbl_802FD13C:
/* 802FD13C  3B BD 00 01 */	addi r29, r29, 1
lbl_802FD140:
/* 802FD140  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802FD144  7C 00 F8 40 */	cmplw r0, r31
/* 802FD148  41 80 FF 74 */	blt lbl_802FD0BC
/* 802FD14C  38 60 00 01 */	li r3, 1
lbl_802FD150:
/* 802FD150  39 61 00 20 */	addi r11, r1, 0x20
/* 802FD154  48 06 50 D1 */	bl _restgpr_28
/* 802FD158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FD15C  7C 08 03 A6 */	mtlr r0
/* 802FD160  38 21 00 20 */	addi r1, r1, 0x20
/* 802FD164  4E 80 00 20 */	blr 
