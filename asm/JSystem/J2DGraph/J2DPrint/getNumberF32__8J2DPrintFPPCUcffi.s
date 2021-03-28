lbl_802F5AC4:
/* 802F5AC4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802F5AC8  7C 08 02 A6 */	mflr r0
/* 802F5ACC  90 01 00 44 */	stw r0, 0x44(r1)
/* 802F5AD0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802F5AD4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802F5AD8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802F5ADC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 802F5AE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F5AE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F5AE8  7C 9E 23 78 */	mr r30, r4
/* 802F5AEC  FF C0 08 90 */	fmr f30, f1
/* 802F5AF0  FF E0 10 90 */	fmr f31, f2
/* 802F5AF4  83 E4 00 00 */	lwz r31, 0(r4)
/* 802F5AF8  88 1F 00 00 */	lbz r0, 0(r31)
/* 802F5AFC  2C 00 00 5B */	cmpwi r0, 0x5b
/* 802F5B00  41 82 00 08 */	beq lbl_802F5B08
/* 802F5B04  48 00 00 CC */	b lbl_802F5BD0
lbl_802F5B08:
/* 802F5B08  38 1F 00 01 */	addi r0, r31, 1
/* 802F5B0C  90 1E 00 00 */	stw r0, 0(r30)
/* 802F5B10  38 60 00 00 */	li r3, 0
/* 802F5B14  2C 05 00 0A */	cmpwi r5, 0xa
/* 802F5B18  40 82 00 14 */	bne lbl_802F5B2C
/* 802F5B1C  80 7E 00 00 */	lwz r3, 0(r30)
/* 802F5B20  38 81 00 08 */	addi r4, r1, 8
/* 802F5B24  48 07 30 DD */	bl strtol
/* 802F5B28  48 00 00 4C */	b lbl_802F5B74
lbl_802F5B2C:
/* 802F5B2C  2C 05 00 10 */	cmpwi r5, 0x10
/* 802F5B30  40 82 00 44 */	bne lbl_802F5B74
/* 802F5B34  80 7E 00 00 */	lwz r3, 0(r30)
/* 802F5B38  38 81 00 08 */	addi r4, r1, 8
/* 802F5B3C  48 07 31 B5 */	bl strtoul
/* 802F5B40  80 9E 00 00 */	lwz r4, 0(r30)
/* 802F5B44  80 01 00 08 */	lwz r0, 8(r1)
/* 802F5B48  7C 04 00 50 */	subf r0, r4, r0
/* 802F5B4C  28 00 00 08 */	cmplwi r0, 8
/* 802F5B50  41 82 00 24 */	beq lbl_802F5B74
/* 802F5B54  28 00 00 06 */	cmplwi r0, 6
/* 802F5B58  40 82 00 10 */	bne lbl_802F5B68
/* 802F5B5C  54 60 40 2E */	slwi r0, r3, 8
/* 802F5B60  60 03 00 FF */	ori r3, r0, 0xff
/* 802F5B64  48 00 00 10 */	b lbl_802F5B74
lbl_802F5B68:
/* 802F5B68  93 FE 00 00 */	stw r31, 0(r30)
/* 802F5B6C  FC 20 F8 90 */	fmr f1, f31
/* 802F5B70  48 00 00 60 */	b lbl_802F5BD0
lbl_802F5B74:
/* 802F5B74  80 81 00 08 */	lwz r4, 8(r1)
/* 802F5B78  88 04 00 00 */	lbz r0, 0(r4)
/* 802F5B7C  2C 00 00 5D */	cmpwi r0, 0x5d
/* 802F5B80  41 82 00 10 */	beq lbl_802F5B90
/* 802F5B84  93 FE 00 00 */	stw r31, 0(r30)
/* 802F5B88  FC 20 F8 90 */	fmr f1, f31
/* 802F5B8C  48 00 00 44 */	b lbl_802F5BD0
lbl_802F5B90:
/* 802F5B90  80 1E 00 00 */	lwz r0, 0(r30)
/* 802F5B94  7C 00 20 40 */	cmplw r0, r4
/* 802F5B98  40 82 00 14 */	bne lbl_802F5BAC
/* 802F5B9C  38 04 00 01 */	addi r0, r4, 1
/* 802F5BA0  90 1E 00 00 */	stw r0, 0(r30)
/* 802F5BA4  FC 20 F0 90 */	fmr f1, f30
/* 802F5BA8  48 00 00 28 */	b lbl_802F5BD0
lbl_802F5BAC:
/* 802F5BAC  38 04 00 01 */	addi r0, r4, 1
/* 802F5BB0  90 1E 00 00 */	stw r0, 0(r30)
/* 802F5BB4  C8 22 C7 D0 */	lfd f1, lit_650(r2)
/* 802F5BB8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802F5BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F5BC0  3C 00 43 30 */	lis r0, 0x4330
/* 802F5BC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F5BC8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802F5BCC  EC 20 08 28 */	fsubs f1, f0, f1
lbl_802F5BD0:
/* 802F5BD0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802F5BD4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802F5BD8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 802F5BDC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802F5BE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F5BE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F5BE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802F5BEC  7C 08 03 A6 */	mtlr r0
/* 802F5BF0  38 21 00 40 */	addi r1, r1, 0x40
/* 802F5BF4  4E 80 00 20 */	blr 
