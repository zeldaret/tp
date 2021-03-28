lbl_802DEE28:
/* 802DEE28  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802DEE2C  7C 08 02 A6 */	mflr r0
/* 802DEE30  90 01 00 74 */	stw r0, 0x74(r1)
/* 802DEE34  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 802DEE38  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 802DEE3C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 802DEE40  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 802DEE44  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 802DEE48  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 802DEE4C  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 802DEE50  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 802DEE54  DB 61 00 20 */	stfd f27, 0x20(r1)
/* 802DEE58  F3 61 00 28 */	psq_st f27, 40(r1), 0, 0 /* qr0 */
/* 802DEE5C  39 61 00 20 */	addi r11, r1, 0x20
/* 802DEE60  48 08 33 75 */	bl _savegpr_27
/* 802DEE64  7C 7B 1B 78 */	mr r27, r3
/* 802DEE68  FF 60 08 90 */	fmr f27, f1
/* 802DEE6C  FF 80 10 90 */	fmr f28, f2
/* 802DEE70  FF A0 18 90 */	fmr f29, f3
/* 802DEE74  FF C0 20 90 */	fmr f30, f4
/* 802DEE78  7C 9C 23 78 */	mr r28, r4
/* 802DEE7C  7C BD 2B 78 */	mr r29, r5
/* 802DEE80  7C DE 33 78 */	mr r30, r6
/* 802DEE84  FF E0 D8 90 */	fmr f31, f27
/* 802DEE88  48 00 00 74 */	b lbl_802DEEFC
lbl_802DEE8C:
/* 802DEE8C  88 9C 00 00 */	lbz r4, 0(r28)
/* 802DEE90  7C 9F 23 78 */	mr r31, r4
/* 802DEE94  7F 63 DB 78 */	mr r3, r27
/* 802DEE98  81 9B 00 00 */	lwz r12, 0(r27)
/* 802DEE9C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802DEEA0  7D 89 03 A6 */	mtctr r12
/* 802DEEA4  4E 80 04 21 */	bctrl 
/* 802DEEA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802DEEAC  41 82 00 14 */	beq lbl_802DEEC0
/* 802DEEB0  57 FF 40 2E */	slwi r31, r31, 8
/* 802DEEB4  8C 1C 00 01 */	lbzu r0, 1(r28)
/* 802DEEB8  7F FF 03 78 */	or r31, r31, r0
/* 802DEEBC  3B BD FF FF */	addi r29, r29, -1
lbl_802DEEC0:
/* 802DEEC0  7F 63 DB 78 */	mr r3, r27
/* 802DEEC4  FC 20 D8 90 */	fmr f1, f27
/* 802DEEC8  FC 40 E0 90 */	fmr f2, f28
/* 802DEECC  FC 60 E8 90 */	fmr f3, f29
/* 802DEED0  FC 80 F0 90 */	fmr f4, f30
/* 802DEED4  7F E4 FB 78 */	mr r4, r31
/* 802DEED8  7F C5 F3 78 */	mr r5, r30
/* 802DEEDC  81 9B 00 00 */	lwz r12, 0(r27)
/* 802DEEE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802DEEE4  7D 89 03 A6 */	mtctr r12
/* 802DEEE8  4E 80 04 21 */	bctrl 
/* 802DEEEC  EF 7B 08 2A */	fadds f27, f27, f1
/* 802DEEF0  3B C0 00 01 */	li r30, 1
/* 802DEEF4  3B BD FF FF */	addi r29, r29, -1
/* 802DEEF8  3B 9C 00 01 */	addi r28, r28, 1
lbl_802DEEFC:
/* 802DEEFC  28 1D 00 00 */	cmplwi r29, 0
/* 802DEF00  40 82 FF 8C */	bne lbl_802DEE8C
/* 802DEF04  EC 3B F8 28 */	fsubs f1, f27, f31
/* 802DEF08  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 802DEF0C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 802DEF10  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 802DEF14  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 802DEF18  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 802DEF1C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 802DEF20  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 802DEF24  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 802DEF28  E3 61 00 28 */	psq_l f27, 40(r1), 0, 0 /* qr0 */
/* 802DEF2C  CB 61 00 20 */	lfd f27, 0x20(r1)
/* 802DEF30  39 61 00 20 */	addi r11, r1, 0x20
/* 802DEF34  48 08 32 ED */	bl _restgpr_27
/* 802DEF38  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802DEF3C  7C 08 03 A6 */	mtlr r0
/* 802DEF40  38 21 00 70 */	addi r1, r1, 0x70
/* 802DEF44  4E 80 00 20 */	blr 
