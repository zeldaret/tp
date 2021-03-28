lbl_8019D1A0:
/* 8019D1A0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8019D1A4  7C 08 02 A6 */	mflr r0
/* 8019D1A8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8019D1AC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8019D1B0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8019D1B4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8019D1B8  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8019D1BC  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8019D1C0  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8019D1C4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8019D1C8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8019D1CC  7C 7E 1B 78 */	mr r30, r3
/* 8019D1D0  C0 02 A2 38 */	lfs f0, lit_4477(r2)
/* 8019D1D4  EF C1 00 24 */	fdivs f30, f1, f0
/* 8019D1D8  EF A2 00 24 */	fdivs f29, f2, f0
/* 8019D1DC  FC 20 E8 90 */	fmr f1, f29
/* 8019D1E0  48 0C A4 05 */	bl cM_rad2s__Ff
/* 8019D1E4  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 8019D1E8  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 8019D1EC  3B E4 00 04 */	addi r31, r4, 4
/* 8019D1F0  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8019D1F4  7F FF 04 2E */	lfsx f31, r31, r0
/* 8019D1F8  FC 20 F0 90 */	fmr f1, f30
/* 8019D1FC  48 0C A3 E9 */	bl cM_rad2s__Ff
/* 8019D200  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8019D204  7C 1F 04 2E */	lfsx f0, r31, r0
/* 8019D208  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8019D20C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8019D210  FC 20 F0 90 */	fmr f1, f30
/* 8019D214  48 0C A3 D1 */	bl cM_rad2s__Ff
/* 8019D218  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8019D21C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8019D220  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8019D224  7C 03 04 2E */	lfsx f0, r3, r0
/* 8019D228  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8019D22C  FC 20 E8 90 */	fmr f1, f29
/* 8019D230  48 0C A3 B5 */	bl cM_rad2s__Ff
/* 8019D234  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8019D238  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8019D23C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8019D240  7F E3 04 2E */	lfsx f31, r3, r0
/* 8019D244  FC 20 F0 90 */	fmr f1, f30
/* 8019D248  48 0C A3 9D */	bl cM_rad2s__Ff
/* 8019D24C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8019D250  7C 1F 04 2E */	lfsx f0, r31, r0
/* 8019D254  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8019D258  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8019D25C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8019D260  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8019D264  38 81 00 20 */	addi r4, r1, 0x20
/* 8019D268  4B E6 F7 49 */	bl mDoMtx_inverseTranspose__FPA4_CfPA4_f
/* 8019D26C  38 61 00 20 */	addi r3, r1, 0x20
/* 8019D270  38 81 00 08 */	addi r4, r1, 8
/* 8019D274  38 A1 00 14 */	addi r5, r1, 0x14
/* 8019D278  48 1A 9A F5 */	bl PSMTXMultVec
/* 8019D27C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8019D280  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019D284  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8019D288  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8019D28C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8019D290  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8019D294  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8019D298  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8019D29C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8019D2A0  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8019D2A4  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8019D2A8  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8019D2AC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8019D2B0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8019D2B4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8019D2B8  7C 08 03 A6 */	mtlr r0
/* 8019D2BC  38 21 00 90 */	addi r1, r1, 0x90
/* 8019D2C0  4E 80 00 20 */	blr 
