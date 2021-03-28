lbl_802CBA88:
/* 802CBA88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CBA8C  7C 08 02 A6 */	mflr r0
/* 802CBA90  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CBA94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CBA98  7C 7F 1B 78 */	mr r31, r3
/* 802CBA9C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802CBAA0  C0 02 C4 60 */	lfs f0, lit_3485(r2)
/* 802CBAA4  D0 03 00 94 */	stfs f0, 0x94(r3)
/* 802CBAA8  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 802CBAAC  38 00 00 00 */	li r0, 0
/* 802CBAB0  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 802CBAB4  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 802CBAB8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802CBABC  41 82 00 40 */	beq lbl_802CBAFC
/* 802CBAC0  88 1F 00 8E */	lbz r0, 0x8e(r31)
/* 802CBAC4  7C 00 07 74 */	extsb r0, r0
/* 802CBAC8  54 00 10 3A */	slwi r0, r0, 2
/* 802CBACC  3C 60 80 43 */	lis r3, sWindStoneSound@ha
/* 802CBAD0  38 63 42 1C */	addi r3, r3, sWindStoneSound@l
/* 802CBAD4  7C 03 00 2E */	lwzx r0, r3, r0
/* 802CBAD8  90 01 00 08 */	stw r0, 8(r1)
/* 802CBADC  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802CBAE0  38 81 00 08 */	addi r4, r1, 8
/* 802CBAE4  38 BF 00 08 */	addi r5, r31, 8
/* 802CBAE8  38 C0 00 00 */	li r6, 0
/* 802CBAEC  81 83 00 00 */	lwz r12, 0(r3)
/* 802CBAF0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802CBAF4  7D 89 03 A6 */	mtctr r12
/* 802CBAF8  4E 80 04 21 */	bctrl 
lbl_802CBAFC:
/* 802CBAFC  80 7F 00 08 */	lwz r3, 8(r31)
/* 802CBB00  28 03 00 00 */	cmplwi r3, 0
/* 802CBB04  41 82 00 3C */	beq lbl_802CBB40
/* 802CBB08  C0 22 C4 60 */	lfs f1, lit_3485(r2)
/* 802CBB0C  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 802CBB10  C0 02 C4 64 */	lfs f0, lit_3486(r2)
/* 802CBB14  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802CBB18  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 802CBB1C  38 00 00 00 */	li r0, 0
/* 802CBB20  90 03 00 30 */	stw r0, 0x30(r3)
/* 802CBB24  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 802CBB28  80 7F 00 08 */	lwz r3, 8(r31)
/* 802CBB2C  38 80 00 1E */	li r4, 0x1e
/* 802CBB30  4B FD 69 AD */	bl stop__8JAISoundFUl
/* 802CBB34  80 7F 00 08 */	lwz r3, 8(r31)
/* 802CBB38  80 63 00 38 */	lwz r3, 0x38(r3)
/* 802CBB3C  48 00 00 08 */	b lbl_802CBB44
lbl_802CBB40:
/* 802CBB40  38 60 00 00 */	li r3, 0
lbl_802CBB44:
/* 802CBB44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CBB48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CBB4C  7C 08 03 A6 */	mtlr r0
/* 802CBB50  38 21 00 20 */	addi r1, r1, 0x20
/* 802CBB54  4E 80 00 20 */	blr 
