lbl_802A9814:
/* 802A9814  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802A9818  7C 08 02 A6 */	mflr r0
/* 802A981C  90 01 00 64 */	stw r0, 0x64(r1)
/* 802A9820  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 802A9824  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 802A9828  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 802A982C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 802A9830  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 802A9834  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 802A9838  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 802A983C  F3 81 00 28 */	psq_st f28, 40(r1), 0, 0 /* qr0 */
/* 802A9840  DB 61 00 10 */	stfd f27, 0x10(r1)
/* 802A9844  F3 61 00 18 */	psq_st f27, 24(r1), 0, 0 /* qr0 */
/* 802A9848  FF 60 08 90 */	fmr f27, f1
/* 802A984C  FF 80 10 90 */	fmr f28, f2
/* 802A9850  FF A0 18 90 */	fmr f29, f3
/* 802A9854  C0 02 BE 30 */	lfs f0, lit_396(r2)
/* 802A9858  EF E0 07 72 */	fmuls f31, f0, f29
/* 802A985C  C0 22 BE 34 */	lfs f1, lit_397(r2)
/* 802A9860  C0 02 BE 2C */	lfs f0, lit_381(r2)
/* 802A9864  EC 00 E8 28 */	fsubs f0, f0, f29
/* 802A9868  EF C1 00 32 */	fmuls f30, f1, f0
/* 802A986C  48 00 00 69 */	bl getRandom_0_1__6Z2CalcFv
/* 802A9870  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 802A9874  40 80 00 0C */	bge lbl_802A9880
/* 802A9878  FC 00 F8 90 */	fmr f0, f31
/* 802A987C  48 00 00 08 */	b lbl_802A9884
lbl_802A9880:
/* 802A9880  FC 00 F0 90 */	fmr f0, f30
lbl_802A9884:
/* 802A9884  EF 7B 00 32 */	fmuls f27, f27, f0
/* 802A9888  48 00 00 4D */	bl getRandom_0_1__6Z2CalcFv
/* 802A988C  FC 40 E0 90 */	fmr f2, f28
/* 802A9890  48 0C 2E F1 */	bl pow
/* 802A9894  FC 00 08 18 */	frsp f0, f1
/* 802A9898  EC 20 06 F2 */	fmuls f1, f0, f27
/* 802A989C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 802A98A0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 802A98A4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 802A98A8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 802A98AC  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 802A98B0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 802A98B4  E3 81 00 28 */	psq_l f28, 40(r1), 0, 0 /* qr0 */
/* 802A98B8  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 802A98BC  E3 61 00 18 */	psq_l f27, 24(r1), 0, 0 /* qr0 */
/* 802A98C0  CB 61 00 10 */	lfd f27, 0x10(r1)
/* 802A98C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802A98C8  7C 08 03 A6 */	mtlr r0
/* 802A98CC  38 21 00 60 */	addi r1, r1, 0x60
/* 802A98D0  4E 80 00 20 */	blr 
