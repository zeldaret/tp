lbl_802FBEDC:
/* 802FBEDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FBEE0  7C 08 02 A6 */	mflr r0
/* 802FBEE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FBEE8  38 E1 00 04 */	addi r7, r1, 4
/* 802FBEEC  3C A0 80 3A */	lis r5, lit_3037@ha
/* 802FBEF0  38 A5 1C 40 */	addi r5, r5, lit_3037@l
/* 802FBEF4  38 C5 FF FC */	addi r6, r5, -4
/* 802FBEF8  38 00 00 02 */	li r0, 2
/* 802FBEFC  7C 09 03 A6 */	mtctr r0
lbl_802FBF00:
/* 802FBF00  80 A6 00 04 */	lwz r5, 4(r6)
/* 802FBF04  84 06 00 08 */	lwzu r0, 8(r6)
/* 802FBF08  90 A7 00 04 */	stw r5, 4(r7)
/* 802FBF0C  94 07 00 08 */	stwu r0, 8(r7)
/* 802FBF10  42 00 FF F0 */	bdnz lbl_802FBF00
/* 802FBF14  80 06 00 04 */	lwz r0, 4(r6)
/* 802FBF18  90 07 00 04 */	stw r0, 4(r7)
/* 802FBF1C  80 03 01 00 */	lwz r0, 0x100(r3)
/* 802FBF20  90 01 00 08 */	stw r0, 8(r1)
/* 802FBF24  80 03 01 04 */	lwz r0, 0x104(r3)
/* 802FBF28  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FBF2C  80 03 01 08 */	lwz r0, 0x108(r3)
/* 802FBF30  90 01 00 10 */	stw r0, 0x10(r1)
/* 802FBF34  80 03 01 0C */	lwz r0, 0x10c(r3)
/* 802FBF38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FBF3C  80 03 01 10 */	lwz r0, 0x110(r3)
/* 802FBF40  90 01 00 18 */	stw r0, 0x18(r1)
/* 802FBF44  38 E0 00 00 */	li r7, 0
/* 802FBF48  38 A1 00 08 */	addi r5, r1, 8
/* 802FBF4C  48 00 00 2C */	b lbl_802FBF78
lbl_802FBF50:
/* 802FBF50  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 802FBF54  7C C5 00 2E */	lwzx r6, r5, r0
/* 802FBF58  28 06 00 00 */	cmplwi r6, 0
/* 802FBF5C  41 82 00 18 */	beq lbl_802FBF74
/* 802FBF60  80 06 00 20 */	lwz r0, 0x20(r6)
/* 802FBF64  7C 00 20 40 */	cmplw r0, r4
/* 802FBF68  40 82 00 0C */	bne lbl_802FBF74
/* 802FBF6C  38 60 00 01 */	li r3, 1
/* 802FBF70  48 00 00 18 */	b lbl_802FBF88
lbl_802FBF74:
/* 802FBF74  38 E7 00 01 */	addi r7, r7, 1
lbl_802FBF78:
/* 802FBF78  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802FBF7C  28 00 00 05 */	cmplwi r0, 5
/* 802FBF80  41 80 FF D0 */	blt lbl_802FBF50
/* 802FBF84  4B FF B4 AD */	bl isUsed__7J2DPaneFPC7ResTIMG
lbl_802FBF88:
/* 802FBF88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FBF8C  7C 08 03 A6 */	mtlr r0
/* 802FBF90  38 21 00 20 */	addi r1, r1, 0x20
/* 802FBF94  4E 80 00 20 */	blr 
