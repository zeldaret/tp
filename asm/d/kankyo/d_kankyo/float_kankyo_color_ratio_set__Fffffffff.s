lbl_8019D7A0:
/* 8019D7A0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8019D7A4  7C 08 02 A6 */	mflr r0
/* 8019D7A8  90 01 00 84 */	stw r0, 0x84(r1)
/* 8019D7AC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8019D7B0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8019D7B4  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8019D7B8  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8019D7BC  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8019D7C0  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8019D7C4  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 8019D7C8  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 8019D7CC  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 8019D7D0  F3 61 00 38 */	psq_st f27, 56(r1), 0, 0 /* qr0 */
/* 8019D7D4  DB 41 00 20 */	stfd f26, 0x20(r1)
/* 8019D7D8  F3 41 00 28 */	psq_st f26, 40(r1), 0, 0 /* qr0 */
/* 8019D7DC  DB 21 00 10 */	stfd f25, 0x10(r1)
/* 8019D7E0  F3 21 00 18 */	psq_st f25, 24(r1), 0, 0 /* qr0 */
/* 8019D7E4  FF 20 18 90 */	fmr f25, f3
/* 8019D7E8  FF 40 20 90 */	fmr f26, f4
/* 8019D7EC  FF 60 28 90 */	fmr f27, f5
/* 8019D7F0  FF 80 30 90 */	fmr f28, f6
/* 8019D7F4  FF A0 38 90 */	fmr f29, f7
/* 8019D7F8  FF C0 40 90 */	fmr f30, f8
/* 8019D7FC  4B FF FF 95 */	bl fl_data_ratio_set__Ffff
/* 8019D800  FF E0 08 90 */	fmr f31, f1
/* 8019D804  FC 20 D0 90 */	fmr f1, f26
/* 8019D808  FC 40 D8 90 */	fmr f2, f27
/* 8019D80C  FC 60 C8 90 */	fmr f3, f25
/* 8019D810  4B FF FF 81 */	bl fl_data_ratio_set__Ffff
/* 8019D814  FC 40 08 90 */	fmr f2, f1
/* 8019D818  FC 20 F8 90 */	fmr f1, f31
/* 8019D81C  FC 60 E0 90 */	fmr f3, f28
/* 8019D820  4B FF FF 71 */	bl fl_data_ratio_set__Ffff
/* 8019D824  EC 1D 08 28 */	fsubs f0, f29, f1
/* 8019D828  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8019D82C  EC 21 00 2A */	fadds f1, f1, f0
/* 8019D830  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8019D834  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8019D838  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8019D83C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8019D840  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8019D844  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8019D848  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 8019D84C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 8019D850  E3 61 00 38 */	psq_l f27, 56(r1), 0, 0 /* qr0 */
/* 8019D854  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 8019D858  E3 41 00 28 */	psq_l f26, 40(r1), 0, 0 /* qr0 */
/* 8019D85C  CB 41 00 20 */	lfd f26, 0x20(r1)
/* 8019D860  E3 21 00 18 */	psq_l f25, 24(r1), 0, 0 /* qr0 */
/* 8019D864  CB 21 00 10 */	lfd f25, 0x10(r1)
/* 8019D868  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8019D86C  7C 08 03 A6 */	mtlr r0
/* 8019D870  38 21 00 80 */	addi r1, r1, 0x80
/* 8019D874  4E 80 00 20 */	blr 
