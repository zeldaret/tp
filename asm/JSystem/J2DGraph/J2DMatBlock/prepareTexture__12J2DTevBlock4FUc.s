lbl_802EDD34:
/* 802EDD34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EDD38  7C 08 02 A6 */	mflr r0
/* 802EDD3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EDD40  39 61 00 20 */	addi r11, r1, 0x20
/* 802EDD44  48 07 44 95 */	bl _savegpr_28
/* 802EDD48  7C 7C 1B 78 */	mr r28, r3
/* 802EDD4C  3B A0 00 00 */	li r29, 0
/* 802EDD50  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 802EDD54  48 00 00 88 */	b lbl_802EDDDC
lbl_802EDD58:
/* 802EDD58  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802EDD5C  28 00 00 04 */	cmplwi r0, 4
/* 802EDD60  41 80 00 0C */	blt lbl_802EDD6C
/* 802EDD64  38 60 00 00 */	li r3, 0
/* 802EDD68  48 00 00 84 */	b lbl_802EDDEC
lbl_802EDD6C:
/* 802EDD6C  57 A3 15 BA */	rlwinm r3, r29, 2, 0x16, 0x1d
/* 802EDD70  3B C3 00 8C */	addi r30, r3, 0x8c
/* 802EDD74  7C 1C F0 2E */	lwzx r0, r28, r30
/* 802EDD78  28 00 00 00 */	cmplwi r0, 0
/* 802EDD7C  40 82 00 5C */	bne lbl_802EDDD8
/* 802EDD80  38 60 00 40 */	li r3, 0x40
/* 802EDD84  4B FE 0E C9 */	bl __nw__FUl
/* 802EDD88  28 03 00 00 */	cmplwi r3, 0
/* 802EDD8C  41 82 00 1C */	beq lbl_802EDDA8
/* 802EDD90  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 802EDD94  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802EDD98  98 03 00 3B */	stb r0, 0x3b(r3)
/* 802EDD9C  38 00 00 00 */	li r0, 0
/* 802EDDA0  90 03 00 28 */	stw r0, 0x28(r3)
/* 802EDDA4  90 03 00 20 */	stw r0, 0x20(r3)
lbl_802EDDA8:
/* 802EDDA8  7C 7C F1 2E */	stwx r3, r28, r30
/* 802EDDAC  7C 1C F0 2E */	lwzx r0, r28, r30
/* 802EDDB0  28 00 00 00 */	cmplwi r0, 0
/* 802EDDB4  40 82 00 0C */	bne lbl_802EDDC0
/* 802EDDB8  38 60 00 00 */	li r3, 0
/* 802EDDBC  48 00 00 30 */	b lbl_802EDDEC
lbl_802EDDC0:
/* 802EDDC0  88 9C 00 B0 */	lbz r4, 0xb0(r28)
/* 802EDDC4  38 60 00 01 */	li r3, 1
/* 802EDDC8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802EDDCC  7C 60 00 30 */	slw r0, r3, r0
/* 802EDDD0  7C 80 03 78 */	or r0, r4, r0
/* 802EDDD4  98 1C 00 B0 */	stb r0, 0xb0(r28)
lbl_802EDDD8:
/* 802EDDD8  3B BD 00 01 */	addi r29, r29, 1
lbl_802EDDDC:
/* 802EDDDC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802EDDE0  7C 00 F8 40 */	cmplw r0, r31
/* 802EDDE4  41 80 FF 74 */	blt lbl_802EDD58
/* 802EDDE8  38 60 00 01 */	li r3, 1
lbl_802EDDEC:
/* 802EDDEC  39 61 00 20 */	addi r11, r1, 0x20
/* 802EDDF0  48 07 44 35 */	bl _restgpr_28
/* 802EDDF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EDDF8  7C 08 03 A6 */	mtlr r0
/* 802EDDFC  38 21 00 20 */	addi r1, r1, 0x20
/* 802EDE00  4E 80 00 20 */	blr 
