lbl_802859DC:
/* 802859DC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802859E0  7C 08 02 A6 */	mflr r0
/* 802859E4  90 01 00 74 */	stw r0, 0x74(r1)
/* 802859E8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 802859EC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 802859F0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 802859F4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 802859F8  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 802859FC  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80285A00  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 80285A04  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 80285A08  DB 61 00 20 */	stfd f27, 0x20(r1)
/* 80285A0C  F3 61 00 28 */	psq_st f27, 40(r1), 0, 0 /* qr0 */
/* 80285A10  DB 41 00 10 */	stfd f26, 0x10(r1)
/* 80285A14  F3 41 00 18 */	psq_st f26, 24(r1), 0, 0 /* qr0 */
/* 80285A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285A1C  7C 7F 1B 78 */	mr r31, r3
/* 80285A20  FF 80 10 90 */	fmr f28, f2
/* 80285A24  FF 40 18 90 */	fmr f26, f3
/* 80285A28  C0 02 BA 68 */	lfs f0, lit_488(r2)
/* 80285A2C  EF 60 00 72 */	fmuls f27, f0, f1
/* 80285A30  FC 20 D8 90 */	fmr f1, f27
/* 80285A34  48 0E 65 F5 */	bl cos
/* 80285A38  FF E0 08 18 */	frsp f31, f1
/* 80285A3C  FC 20 D8 90 */	fmr f1, f27
/* 80285A40  48 0E 6B 51 */	bl sin
/* 80285A44  FF C0 08 18 */	frsp f30, f1
/* 80285A48  C0 02 BA 68 */	lfs f0, lit_488(r2)
/* 80285A4C  EF 60 07 32 */	fmuls f27, f0, f28
/* 80285A50  FC 20 D8 90 */	fmr f1, f27
/* 80285A54  48 0E 65 D5 */	bl cos
/* 80285A58  FF A0 08 18 */	frsp f29, f1
/* 80285A5C  FC 20 D8 90 */	fmr f1, f27
/* 80285A60  48 0E 6B 31 */	bl sin
/* 80285A64  FF 80 08 18 */	frsp f28, f1
/* 80285A68  C0 02 BA 68 */	lfs f0, lit_488(r2)
/* 80285A6C  EF 40 06 B2 */	fmuls f26, f0, f26
/* 80285A70  FC 20 D0 90 */	fmr f1, f26
/* 80285A74  48 0E 65 B5 */	bl cos
/* 80285A78  FF 60 08 18 */	frsp f27, f1
/* 80285A7C  FC 20 D0 90 */	fmr f1, f26
/* 80285A80  48 0E 6B 11 */	bl sin
/* 80285A84  FC 20 08 18 */	frsp f1, f1
/* 80285A88  EC 5F 06 F2 */	fmuls f2, f31, f27
/* 80285A8C  EC 7F 00 72 */	fmuls f3, f31, f1
/* 80285A90  EC 9E 06 F2 */	fmuls f4, f30, f27
/* 80285A94  EC BE 00 72 */	fmuls f5, f30, f1
/* 80285A98  EC 1D 06 F2 */	fmuls f0, f29, f27
/* 80285A9C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80285AA0  EC 1D 00 72 */	fmuls f0, f29, f1
/* 80285AA4  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80285AA8  FC 00 E0 50 */	fneg f0, f28
/* 80285AAC  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80285AB0  EC 1E 07 72 */	fmuls f0, f30, f29
/* 80285AB4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80285AB8  EC 1F 07 72 */	fmuls f0, f31, f29
/* 80285ABC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80285AC0  EC 04 07 32 */	fmuls f0, f4, f28
/* 80285AC4  EC 00 18 28 */	fsubs f0, f0, f3
/* 80285AC8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80285ACC  EC 02 07 32 */	fmuls f0, f2, f28
/* 80285AD0  EC 05 00 2A */	fadds f0, f5, f0
/* 80285AD4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80285AD8  EC 05 07 32 */	fmuls f0, f5, f28
/* 80285ADC  EC 02 00 2A */	fadds f0, f2, f0
/* 80285AE0  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80285AE4  EC 03 07 32 */	fmuls f0, f3, f28
/* 80285AE8  EC 00 20 28 */	fsubs f0, f0, f4
/* 80285AEC  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80285AF0  C0 02 BA 6C */	lfs f0, lit_489(r2)
/* 80285AF4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80285AF8  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80285AFC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80285B00  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80285B04  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80285B08  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80285B0C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80285B10  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80285B14  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80285B18  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 80285B1C  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 80285B20  E3 61 00 28 */	psq_l f27, 40(r1), 0, 0 /* qr0 */
/* 80285B24  CB 61 00 20 */	lfd f27, 0x20(r1)
/* 80285B28  E3 41 00 18 */	psq_l f26, 24(r1), 0, 0 /* qr0 */
/* 80285B2C  CB 41 00 10 */	lfd f26, 0x10(r1)
/* 80285B30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285B34  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80285B38  7C 08 03 A6 */	mtlr r0
/* 80285B3C  38 21 00 70 */	addi r1, r1, 0x70
/* 80285B40  4E 80 00 20 */	blr 
