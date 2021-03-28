lbl_80C3D630:
/* 80C3D630  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C3D634  7C 08 02 A6 */	mflr r0
/* 80C3D638  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C3D63C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C3D640  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C3D644  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80C3D648  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80C3D64C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C3D650  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C3D654  7C 9E 23 78 */	mr r30, r4
/* 80C3D658  3C 60 80 C4 */	lis r3, lit_3648@ha
/* 80C3D65C  3B E3 F0 58 */	addi r31, r3, lit_3648@l
/* 80C3D660  A8 05 00 08 */	lha r0, 8(r5)
/* 80C3D664  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C3D668  40 82 00 BC */	bne lbl_80C3D724
/* 80C3D66C  A8 1E 05 A0 */	lha r0, 0x5a0(r30)
/* 80C3D670  2C 00 00 00 */	cmpwi r0, 0
/* 80C3D674  40 82 00 0C */	bne lbl_80C3D680
/* 80C3D678  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C3D67C  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
lbl_80C3D680:
/* 80C3D680  38 00 00 03 */	li r0, 3
/* 80C3D684  B0 1E 05 A0 */	sth r0, 0x5a0(r30)
/* 80C3D688  C0 25 04 D0 */	lfs f1, 0x4d0(r5)
/* 80C3D68C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C3D690  EF E1 00 28 */	fsubs f31, f1, f0
/* 80C3D694  C0 25 04 D8 */	lfs f1, 0x4d8(r5)
/* 80C3D698  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C3D69C  EF C1 00 28 */	fsubs f30, f1, f0
/* 80C3D6A0  FC 20 F8 90 */	fmr f1, f31
/* 80C3D6A4  FC 40 F0 90 */	fmr f2, f30
/* 80C3D6A8  4B 62 9F CC */	b cM_atan2s__Fff
/* 80C3D6AC  B0 7E 05 B0 */	sth r3, 0x5b0(r30)
/* 80C3D6B0  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 80C3D6B4  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80C3D6B8  EC 41 00 2A */	fadds f2, f1, f0
/* 80C3D6BC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C3D6C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C3D6C4  40 81 00 0C */	ble lbl_80C3D6D0
/* 80C3D6C8  FC 00 10 34 */	frsqrte f0, f2
/* 80C3D6CC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80C3D6D0:
/* 80C3D6D0  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C3D6D4  38 63 F2 94 */	addi r3, r3, l_HIO@l
/* 80C3D6D8  C0 23 00 08 */	lfs f1, 8(r3)
/* 80C3D6DC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C3D6E0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C3D6E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C3D6E8  FC 00 00 1E */	fctiwz f0, f0
/* 80C3D6EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C3D6F0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C3D6F4  7C 80 07 34 */	extsh r0, r4
/* 80C3D6F8  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80C3D6FC  40 81 00 0C */	ble lbl_80C3D708
/* 80C3D700  38 80 10 00 */	li r4, 0x1000
/* 80C3D704  48 00 00 10 */	b lbl_80C3D714
lbl_80C3D708:
/* 80C3D708  2C 00 F0 00 */	cmpwi r0, -4096
/* 80C3D70C  40 80 00 08 */	bge lbl_80C3D714
/* 80C3D710  38 80 F0 00 */	li r4, -4096
lbl_80C3D714:
/* 80C3D714  38 7E 05 B2 */	addi r3, r30, 0x5b2
/* 80C3D718  38 A0 00 04 */	li r5, 4
/* 80C3D71C  38 C0 20 00 */	li r6, 0x2000
/* 80C3D720  4B 63 2E E8 */	b cLib_addCalcAngleS2__FPssss
lbl_80C3D724:
/* 80C3D724  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C3D728  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C3D72C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80C3D730  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80C3D734  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C3D738  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C3D73C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C3D740  7C 08 03 A6 */	mtlr r0
/* 80C3D744  38 21 00 40 */	addi r1, r1, 0x40
/* 80C3D748  4E 80 00 20 */	blr 
