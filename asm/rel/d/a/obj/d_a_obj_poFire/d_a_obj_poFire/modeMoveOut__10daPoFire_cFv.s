lbl_80CB355C:
/* 80CB355C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CB3560  7C 08 02 A6 */	mflr r0
/* 80CB3564  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CB3568  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80CB356C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80CB3570  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CB3574  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CB3578  7C 7F 1B 78 */	mr r31, r3
/* 80CB357C  3C 60 80 CB */	lis r3, lit_3662@ha
/* 80CB3580  3B C3 3E EC */	addi r30, r3, lit_3662@l
/* 80CB3584  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80CB3588  C0 3F 05 EC */	lfs f1, 0x5ec(r31)
/* 80CB358C  3C 60 80 CB */	lis r3, l_HIO@ha
/* 80CB3590  38 A3 41 14 */	addi r5, r3, l_HIO@l
/* 80CB3594  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 80CB3598  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB359C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CB35A0  FC 00 00 1E */	fctiwz f0, f0
/* 80CB35A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80CB35A8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80CB35AC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CB35B0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CB35B4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CB35B8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CB35BC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CB35C0  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB35C4  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 80CB35C8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CB35CC  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80CB35D0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80CB35D4  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 80CB35D8  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 80CB35DC  EC 42 00 32 */	fmuls f2, f2, f0
/* 80CB35E0  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 80CB35E4  4B 5B C4 D4 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80CB35E8  FF E0 08 90 */	fmr f31, f1
/* 80CB35EC  C0 3F 05 EC */	lfs f1, 0x5ec(r31)
/* 80CB35F0  3C 60 80 CB */	lis r3, l_HIO@ha
/* 80CB35F4  38 63 41 14 */	addi r3, r3, l_HIO@l
/* 80CB35F8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80CB35FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB3600  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 80CB3604  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80CB3608  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80CB360C  40 80 00 20 */	bge lbl_80CB362C
/* 80CB3610  38 7F 06 08 */	addi r3, r31, 0x608
/* 80CB3614  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80CB3618  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80CB361C  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80CB3620  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 80CB3624  4B 5B C3 58 */	b cLib_addCalc__FPfffff
/* 80CB3628  48 00 00 0C */	b lbl_80CB3634
lbl_80CB362C:
/* 80CB362C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CB3630  D0 1F 06 08 */	stfs f0, 0x608(r31)
lbl_80CB3634:
/* 80CB3634  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80CB3638  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80CB363C  3C 60 80 CB */	lis r3, l_HIO@ha
/* 80CB3640  38 83 41 14 */	addi r4, r3, l_HIO@l
/* 80CB3644  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80CB3648  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB364C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CB3650  FC 00 00 1E */	fctiwz f0, f0
/* 80CB3654  D8 01 00 08 */	stfd f0, 8(r1)
/* 80CB3658  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80CB365C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CB3660  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CB3664  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CB3668  7C 63 04 2E */	lfsx f3, r3, r0
/* 80CB366C  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80CB3670  C0 1F 06 08 */	lfs f0, 0x608(r31)
/* 80CB3674  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB3678  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80CB367C  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 80CB3680  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80CB3684  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80CB3688  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB368C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CB3690  FC 00 00 1E */	fctiwz f0, f0
/* 80CB3694  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CB3698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB369C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CB36A0  7C 43 04 2E */	lfsx f2, r3, r0
/* 80CB36A4  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80CB36A8  C0 1F 06 08 */	lfs f0, 0x608(r31)
/* 80CB36AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB36B0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CB36B4  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
/* 80CB36B8  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80CB36BC  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80CB36C0  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB36C4  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 80CB36C8  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80CB36CC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80CB36D0  40 82 00 24 */	bne lbl_80CB36F4
/* 80CB36D4  38 00 00 01 */	li r0, 1
/* 80CB36D8  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80CB36DC  98 03 05 69 */	stb r0, 0x569(r3)
/* 80CB36E0  98 1F 05 94 */	stb r0, 0x594(r31)
/* 80CB36E4  38 00 00 00 */	li r0, 0
/* 80CB36E8  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80CB36EC  7F E3 FB 78 */	mr r3, r31
/* 80CB36F0  48 00 03 ED */	bl init_modeFireEnd__10daPoFire_cFv
lbl_80CB36F4:
/* 80CB36F4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80CB36F8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80CB36FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CB3700  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CB3704  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CB3708  7C 08 03 A6 */	mtlr r0
/* 80CB370C  38 21 00 30 */	addi r1, r1, 0x30
/* 80CB3710  4E 80 00 20 */	blr 
