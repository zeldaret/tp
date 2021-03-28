lbl_807DC084:
/* 807DC084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807DC088  7C 08 02 A6 */	mflr r0
/* 807DC08C  90 01 00 24 */	stw r0, 0x24(r1)
/* 807DC090  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 807DC094  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 807DC098  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807DC09C  7C 7F 1B 78 */	mr r31, r3
/* 807DC0A0  FF E0 08 90 */	fmr f31, f1
/* 807DC0A4  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DC0A8  C0 3F 16 E0 */	lfs f1, 0x16e0(r31)
/* 807DC0AC  FC 40 F8 90 */	fmr f2, f31
/* 807DC0B0  C0 7F 16 F8 */	lfs f3, 0x16f8(r31)
/* 807DC0B4  C0 1F 17 10 */	lfs f0, 0x1710(r31)
/* 807DC0B8  EC 63 00 32 */	fmuls f3, f3, f0
/* 807DC0BC  4B A9 39 80 */	b cLib_addCalc2__FPffff
/* 807DC0C0  38 7F 16 C0 */	addi r3, r31, 0x16c0
/* 807DC0C4  C0 3F 16 E4 */	lfs f1, 0x16e4(r31)
/* 807DC0C8  FC 40 F8 90 */	fmr f2, f31
/* 807DC0CC  C0 7F 16 FC */	lfs f3, 0x16fc(r31)
/* 807DC0D0  C0 1F 17 10 */	lfs f0, 0x1710(r31)
/* 807DC0D4  EC 63 00 32 */	fmuls f3, f3, f0
/* 807DC0D8  4B A9 39 64 */	b cLib_addCalc2__FPffff
/* 807DC0DC  38 7F 16 C4 */	addi r3, r31, 0x16c4
/* 807DC0E0  C0 3F 16 E8 */	lfs f1, 0x16e8(r31)
/* 807DC0E4  FC 40 F8 90 */	fmr f2, f31
/* 807DC0E8  C0 7F 17 00 */	lfs f3, 0x1700(r31)
/* 807DC0EC  C0 1F 17 10 */	lfs f0, 0x1710(r31)
/* 807DC0F0  EC 63 00 32 */	fmuls f3, f3, f0
/* 807DC0F4  4B A9 39 48 */	b cLib_addCalc2__FPffff
/* 807DC0F8  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DC0FC  C0 3F 16 D4 */	lfs f1, 0x16d4(r31)
/* 807DC100  FC 40 F8 90 */	fmr f2, f31
/* 807DC104  C0 7F 16 EC */	lfs f3, 0x16ec(r31)
/* 807DC108  C0 1F 17 10 */	lfs f0, 0x1710(r31)
/* 807DC10C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807DC110  4B A9 39 2C */	b cLib_addCalc2__FPffff
/* 807DC114  38 7F 16 A8 */	addi r3, r31, 0x16a8
/* 807DC118  C0 3F 16 D8 */	lfs f1, 0x16d8(r31)
/* 807DC11C  FC 40 F8 90 */	fmr f2, f31
/* 807DC120  C0 7F 16 F0 */	lfs f3, 0x16f0(r31)
/* 807DC124  C0 1F 17 10 */	lfs f0, 0x1710(r31)
/* 807DC128  EC 63 00 32 */	fmuls f3, f3, f0
/* 807DC12C  4B A9 39 10 */	b cLib_addCalc2__FPffff
/* 807DC130  38 7F 16 AC */	addi r3, r31, 0x16ac
/* 807DC134  C0 3F 16 DC */	lfs f1, 0x16dc(r31)
/* 807DC138  FC 40 F8 90 */	fmr f2, f31
/* 807DC13C  C0 7F 16 F4 */	lfs f3, 0x16f4(r31)
/* 807DC140  C0 1F 17 10 */	lfs f0, 0x1710(r31)
/* 807DC144  EC 63 00 32 */	fmuls f3, f3, f0
/* 807DC148  4B A9 38 F4 */	b cLib_addCalc2__FPffff
/* 807DC14C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 807DC150  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 807DC154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807DC158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807DC15C  7C 08 03 A6 */	mtlr r0
/* 807DC160  38 21 00 20 */	addi r1, r1, 0x20
/* 807DC164  4E 80 00 20 */	blr 
