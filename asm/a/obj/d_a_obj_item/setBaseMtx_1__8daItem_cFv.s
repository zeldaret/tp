lbl_8015B1C8:
/* 8015B1C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015B1CC  7C 08 02 A6 */	mflr r0
/* 8015B1D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015B1D4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8015B1D8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8015B1DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015B1E0  7C 7F 1B 78 */	mr r31, r3
/* 8015B1E4  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8015B1E8  80 63 00 04 */	lwz r3, 4(r3)
/* 8015B1EC  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8015B1F0  80 63 00 00 */	lwz r3, 0(r3)
/* 8015B1F4  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 8015B1F8  C0 02 9B 70 */	lfs f0, lit_3923(r2)
/* 8015B1FC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8015B200  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8015B204  EF E1 00 32 */	fmuls f31, f1, f0
/* 8015B208  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8015B20C  4B EB 1B 59 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8015B210  C0 22 9B 50 */	lfs f1, lit_3857(r2)
/* 8015B214  FC 40 F8 90 */	fmr f2, f31
/* 8015B218  FC 60 08 90 */	fmr f3, f1
/* 8015B21C  4B EB 1B 81 */	bl transM__14mDoMtx_stack_cFfff
/* 8015B220  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8015B224  4B EB 1D 21 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8015B228  C0 22 9B 50 */	lfs f1, lit_3857(r2)
/* 8015B22C  FC 40 F8 50 */	fneg f2, f31
/* 8015B230  FC 60 08 90 */	fmr f3, f1
/* 8015B234  4B EB 1B 69 */	bl transM__14mDoMtx_stack_cFfff
/* 8015B238  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8015B23C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8015B240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015B244  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015B248  7C 08 03 A6 */	mtlr r0
/* 8015B24C  38 21 00 20 */	addi r1, r1, 0x20
/* 8015B250  4E 80 00 20 */	blr 
