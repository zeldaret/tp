lbl_8005B780:
/* 8005B780  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8005B784  7C 08 02 A6 */	mflr r0
/* 8005B788  90 01 00 44 */	stw r0, 0x44(r1)
/* 8005B78C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8005B790  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8005B794  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8005B798  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8005B79C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8005B7A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8005B7A4  7C 7E 1B 78 */	mr r30, r3
/* 8005B7A8  7C 9F 23 78 */	mr r31, r4
/* 8005B7AC  FF C0 08 90 */	fmr f30, f1
/* 8005B7B0  FF E0 10 90 */	fmr f31, f2
/* 8005B7B4  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 8005B7B8  38 9E 00 E4 */	addi r4, r30, 0xe4
/* 8005B7BC  38 A1 00 08 */	addi r5, r1, 8
/* 8005B7C0  4B FF FF 49 */	bl get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8005B7C4  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8005B7C8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8005B7CC  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8005B7D0  EC 01 00 2A */	fadds f0, f1, f0
/* 8005B7D4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8005B7D8  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 8005B7DC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8005B7E0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8005B7E4  EC 21 00 2A */	fadds f1, f1, f0
/* 8005B7E8  C0 02 87 BC */	lfs f0, lit_3970(r2)
/* 8005B7EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8005B7F0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8005B7F4  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 8005B7F8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8005B7FC  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8005B800  EC 01 00 2A */	fadds f0, f1, f0
/* 8005B804  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8005B808  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8005B80C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8005B810  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8005B814  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8005B818  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8005B81C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8005B820  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8005B824  7C 08 03 A6 */	mtlr r0
/* 8005B828  38 21 00 40 */	addi r1, r1, 0x40
/* 8005B82C  4E 80 00 20 */	blr 
