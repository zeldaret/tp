lbl_80CB3730:
/* 80CB3730  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CB3734  7C 08 02 A6 */	mflr r0
/* 80CB3738  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CB373C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80CB3740  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80CB3744  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CB3748  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CB374C  7C 7F 1B 78 */	mr r31, r3
/* 80CB3750  3C 60 80 CB */	lis r3, lit_3662@ha
/* 80CB3754  3B C3 3E EC */	addi r30, r3, lit_3662@l
/* 80CB3758  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80CB375C  C0 3F 05 EC */	lfs f1, 0x5ec(r31)
/* 80CB3760  3C 60 80 CB */	lis r3, l_HIO@ha
/* 80CB3764  38 63 41 14 */	addi r3, r3, l_HIO@l
/* 80CB3768  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80CB376C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB3770  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CB3774  FC 00 00 1E */	fctiwz f0, f0
/* 80CB3778  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CB377C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80CB3780  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CB3784  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CB3788  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CB378C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CB3790  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CB3794  EC 00 08 2A */	fadds f0, f0, f1
/* 80CB3798  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 80CB379C  38 61 00 08 */	addi r3, r1, 8
/* 80CB37A0  80 9F 05 C8 */	lwz r4, 0x5c8(r31)
/* 80CB37A4  48 00 06 99 */	bl getFirePos__12daPoCandle_cFv
/* 80CB37A8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CB37AC  38 81 00 08 */	addi r4, r1, 8
/* 80CB37B0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CB37B4  3C A0 80 CB */	lis r5, l_HIO@ha
/* 80CB37B8  38 A5 41 14 */	addi r5, r5, l_HIO@l
/* 80CB37BC  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 80CB37C0  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 80CB37C4  EC 42 00 32 */	fmuls f2, f2, f0
/* 80CB37C8  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 80CB37CC  4B 5B C2 EC */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80CB37D0  FF E0 08 90 */	fmr f31, f1
/* 80CB37D4  C0 3F 05 EC */	lfs f1, 0x5ec(r31)
/* 80CB37D8  3C 60 80 CB */	lis r3, l_HIO@ha
/* 80CB37DC  38 63 41 14 */	addi r3, r3, l_HIO@l
/* 80CB37E0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80CB37E4  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB37E8  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 80CB37EC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80CB37F0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80CB37F4  40 80 00 20 */	bge lbl_80CB3814
/* 80CB37F8  38 7F 06 08 */	addi r3, r31, 0x608
/* 80CB37FC  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80CB3800  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80CB3804  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80CB3808  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 80CB380C  4B 5B C1 70 */	b cLib_addCalc__FPfffff
/* 80CB3810  48 00 00 0C */	b lbl_80CB381C
lbl_80CB3814:
/* 80CB3814  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CB3818  D0 1F 06 08 */	stfs f0, 0x608(r31)
lbl_80CB381C:
/* 80CB381C  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80CB3820  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80CB3824  3C 60 80 CB */	lis r3, l_HIO@ha
/* 80CB3828  38 83 41 14 */	addi r4, r3, l_HIO@l
/* 80CB382C  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80CB3830  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB3834  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CB3838  FC 00 00 1E */	fctiwz f0, f0
/* 80CB383C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CB3840  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80CB3844  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CB3848  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CB384C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CB3850  7C 63 04 2E */	lfsx f3, r3, r0
/* 80CB3854  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80CB3858  C0 1F 06 08 */	lfs f0, 0x608(r31)
/* 80CB385C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB3860  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80CB3864  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 80CB3868  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80CB386C  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80CB3870  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB3874  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CB3878  FC 00 00 1E */	fctiwz f0, f0
/* 80CB387C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80CB3880  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CB3884  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CB3888  7C 43 04 2E */	lfsx f2, r3, r0
/* 80CB388C  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80CB3890  C0 1F 06 08 */	lfs f0, 0x608(r31)
/* 80CB3894  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB3898  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CB389C  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
/* 80CB38A0  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80CB38A4  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80CB38A8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB38AC  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 80CB38B0  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80CB38B4  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80CB38B8  40 82 00 14 */	bne lbl_80CB38CC
/* 80CB38BC  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 80CB38C0  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
/* 80CB38C4  7F E3 FB 78 */	mr r3, r31
/* 80CB38C8  48 00 00 25 */	bl init_modeMoveWait__10daPoFire_cFv
lbl_80CB38CC:
/* 80CB38CC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80CB38D0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80CB38D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CB38D8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CB38DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CB38E0  7C 08 03 A6 */	mtlr r0
/* 80CB38E4  38 21 00 40 */	addi r1, r1, 0x40
/* 80CB38E8  4E 80 00 20 */	blr 
