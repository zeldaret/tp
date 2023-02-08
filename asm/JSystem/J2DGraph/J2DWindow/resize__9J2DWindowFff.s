lbl_802FB000:
/* 802FB000  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802FB004  7C 08 02 A6 */	mflr r0
/* 802FB008  90 01 00 54 */	stw r0, 0x54(r1)
/* 802FB00C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802FB010  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802FB014  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 802FB018  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 802FB01C  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 802FB020  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 802FB024  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 802FB028  F3 81 00 18 */	psq_st f28, 24(r1), 0, 0 /* qr0 */
/* 802FB02C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FB030  7C 7F 1B 78 */	mr r31, r3
/* 802FB034  FF 80 08 90 */	fmr f28, f1
/* 802FB038  FF A0 10 90 */	fmr f29, f2
/* 802FB03C  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 802FB040  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802FB044  EF E3 00 28 */	fsubs f31, f3, f0
/* 802FB048  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 802FB04C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802FB050  EF C3 00 28 */	fsubs f30, f3, f0
/* 802FB054  4B FF BF A5 */	bl resize__7J2DPaneFff
/* 802FB058  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 802FB05C  EF FC F8 28 */	fsubs f31, f28, f31
/* 802FB060  EC 00 F8 2A */	fadds f0, f0, f31
/* 802FB064  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 802FB068  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 802FB06C  EF DD F0 28 */	fsubs f30, f29, f30
/* 802FB070  EC 00 F0 2A */	fadds f0, f0, f30
/* 802FB074  D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 802FB078  83 FF 00 DC */	lwz r31, 0xdc(r31)
/* 802FB07C  28 1F 00 00 */	cmplwi r31, 0
/* 802FB080  41 82 00 70 */	beq lbl_802FB0F0
/* 802FB084  3B FF FF F4 */	addi r31, r31, -12
/* 802FB088  48 00 00 68 */	b lbl_802FB0F0
lbl_802FB08C:
/* 802FB08C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802FB090  81 83 00 00 */	lwz r12, 0(r3)
/* 802FB094  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802FB098  7D 89 03 A6 */	mtctr r12
/* 802FB09C  4E 80 04 21 */	bctrl 
/* 802FB0A0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802FB0A4  28 00 00 13 */	cmplwi r0, 0x13
/* 802FB0A8  40 82 00 38 */	bne lbl_802FB0E0
/* 802FB0AC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802FB0B0  88 03 00 B5 */	lbz r0, 0xb5(r3)
/* 802FB0B4  28 00 00 00 */	cmplwi r0, 0
/* 802FB0B8  41 82 00 28 */	beq lbl_802FB0E0
/* 802FB0BC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802FB0C0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802FB0C4  EC 41 00 28 */	fsubs f2, f1, f0
/* 802FB0C8  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802FB0CC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802FB0D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 802FB0D4  EC 3F 10 2A */	fadds f1, f31, f2
/* 802FB0D8  EC 5E 00 2A */	fadds f2, f30, f0
/* 802FB0DC  4B FF BF 1D */	bl resize__7J2DPaneFff
lbl_802FB0E0:
/* 802FB0E0  83 FF 00 18 */	lwz r31, 0x18(r31)
/* 802FB0E4  28 1F 00 00 */	cmplwi r31, 0
/* 802FB0E8  41 82 00 08 */	beq lbl_802FB0F0
/* 802FB0EC  3B FF FF F4 */	addi r31, r31, -12
lbl_802FB0F0:
/* 802FB0F0  28 1F 00 00 */	cmplwi r31, 0
/* 802FB0F4  40 82 FF 98 */	bne lbl_802FB08C
/* 802FB0F8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802FB0FC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802FB100  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 802FB104  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802FB108  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 802FB10C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 802FB110  E3 81 00 18 */	psq_l f28, 24(r1), 0, 0 /* qr0 */
/* 802FB114  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 802FB118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FB11C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802FB120  7C 08 03 A6 */	mtlr r0
/* 802FB124  38 21 00 50 */	addi r1, r1, 0x50
/* 802FB128  4E 80 00 20 */	blr 
