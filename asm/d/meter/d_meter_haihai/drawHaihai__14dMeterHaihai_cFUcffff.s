lbl_8020B814:
/* 8020B814  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8020B818  7C 08 02 A6 */	mflr r0
/* 8020B81C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8020B820  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8020B824  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8020B828  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8020B82C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8020B830  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 8020B834  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 8020B838  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 8020B83C  F3 81 00 18 */	psq_st f28, 24(r1), 0, 0 /* qr0 */
/* 8020B840  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020B844  93 C1 00 08 */	stw r30, 8(r1)
/* 8020B848  7C 7F 1B 78 */	mr r31, r3
/* 8020B84C  FF C0 18 90 */	fmr f30, f3
/* 8020B850  FF E0 20 90 */	fmr f31, f4
/* 8020B854  88 03 00 28 */	lbz r0, 0x28(r3)
/* 8020B858  28 00 00 01 */	cmplwi r0, 1
/* 8020B85C  40 82 00 30 */	bne lbl_8020B88C
/* 8020B860  C0 62 AD D8 */	lfs f3, lit_3940(r2)
/* 8020B864  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020B868  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020B86C  C0 03 05 1C */	lfs f0, 0x51c(r3)
/* 8020B870  EC 03 00 2A */	fadds f0, f3, f0
/* 8020B874  EF 81 00 2A */	fadds f28, f1, f0
/* 8020B878  C0 23 05 20 */	lfs f1, 0x520(r3)
/* 8020B87C  C0 02 AD DC */	lfs f0, lit_3941(r2)
/* 8020B880  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020B884  EF A2 00 2A */	fadds f29, f2, f0
/* 8020B888  48 00 00 1C */	b lbl_8020B8A4
lbl_8020B88C:
/* 8020B88C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020B890  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020B894  C0 03 05 1C */	lfs f0, 0x51c(r3)
/* 8020B898  EF 81 00 2A */	fadds f28, f1, f0
/* 8020B89C  C0 03 05 20 */	lfs f0, 0x520(r3)
/* 8020B8A0  EF A2 00 2A */	fadds f29, f2, f0
lbl_8020B8A4:
/* 8020B8A4  54 9E 06 3E */	clrlwi r30, r4, 0x18
/* 8020B8A8  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 8020B8AC  40 82 00 18 */	bne lbl_8020B8C4
/* 8020B8B0  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020B8B4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020B8B8  88 03 05 24 */	lbz r0, 0x524(r3)
/* 8020B8BC  28 00 00 00 */	cmplwi r0, 0
/* 8020B8C0  41 82 00 1C */	beq lbl_8020B8DC
lbl_8020B8C4:
/* 8020B8C4  7F E3 FB 78 */	mr r3, r31
/* 8020B8C8  FC 20 E0 90 */	fmr f1, f28
/* 8020B8CC  C0 02 AD C8 */	lfs f0, lit_3895(r2)
/* 8020B8D0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8020B8D4  EC 5D 00 2A */	fadds f2, f29, f0
/* 8020B8D8  48 00 02 AD */	bl drawHaihaiBottom__14dMeterHaihai_cFff
lbl_8020B8DC:
/* 8020B8DC  57 C0 07 7B */	rlwinm. r0, r30, 0, 0x1d, 0x1d
/* 8020B8E0  40 82 00 18 */	bne lbl_8020B8F8
/* 8020B8E4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020B8E8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020B8EC  88 03 05 24 */	lbz r0, 0x524(r3)
/* 8020B8F0  28 00 00 00 */	cmplwi r0, 0
/* 8020B8F4  41 82 00 1C */	beq lbl_8020B910
lbl_8020B8F8:
/* 8020B8F8  7F E3 FB 78 */	mr r3, r31
/* 8020B8FC  C0 02 AD C8 */	lfs f0, lit_3895(r2)
/* 8020B900  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8020B904  EC 3C 00 2A */	fadds f1, f28, f0
/* 8020B908  FC 40 E8 90 */	fmr f2, f29
/* 8020B90C  48 00 01 41 */	bl drawHaihaiRight__14dMeterHaihai_cFff
lbl_8020B910:
/* 8020B910  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 8020B914  40 82 00 18 */	bne lbl_8020B92C
/* 8020B918  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020B91C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020B920  88 03 05 24 */	lbz r0, 0x524(r3)
/* 8020B924  28 00 00 00 */	cmplwi r0, 0
/* 8020B928  41 82 00 1C */	beq lbl_8020B944
lbl_8020B92C:
/* 8020B92C  7F E3 FB 78 */	mr r3, r31
/* 8020B930  FC 20 E0 90 */	fmr f1, f28
/* 8020B934  C0 02 AD C8 */	lfs f0, lit_3895(r2)
/* 8020B938  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8020B93C  EC 5D 00 28 */	fsubs f2, f29, f0
/* 8020B940  48 00 01 A9 */	bl drawHaihaiTop__14dMeterHaihai_cFff
lbl_8020B944:
/* 8020B944  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 8020B948  40 82 00 18 */	bne lbl_8020B960
/* 8020B94C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020B950  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020B954  88 03 05 24 */	lbz r0, 0x524(r3)
/* 8020B958  28 00 00 00 */	cmplwi r0, 0
/* 8020B95C  41 82 00 1C */	beq lbl_8020B978
lbl_8020B960:
/* 8020B960  7F E3 FB 78 */	mr r3, r31
/* 8020B964  C0 02 AD C8 */	lfs f0, lit_3895(r2)
/* 8020B968  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8020B96C  EC 3C 00 28 */	fsubs f1, f28, f0
/* 8020B970  FC 40 E8 90 */	fmr f2, f29
/* 8020B974  48 00 00 3D */	bl drawHaihaiLeft__14dMeterHaihai_cFff
lbl_8020B978:
/* 8020B978  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8020B97C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8020B980  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8020B984  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8020B988  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 8020B98C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8020B990  E3 81 00 18 */	psq_l f28, 24(r1), 0, 0 /* qr0 */
/* 8020B994  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 8020B998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020B99C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020B9A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8020B9A4  7C 08 03 A6 */	mtlr r0
/* 8020B9A8  38 21 00 50 */	addi r1, r1, 0x50
/* 8020B9AC  4E 80 00 20 */	blr 
