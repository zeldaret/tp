lbl_8013E2A8:
/* 8013E2A8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8013E2AC  7C 08 02 A6 */	mflr r0
/* 8013E2B0  90 01 00 84 */	stw r0, 0x84(r1)
/* 8013E2B4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8013E2B8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8013E2BC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8013E2C0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8013E2C4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8013E2C8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8013E2CC  7C 7F 1B 78 */	mr r31, r3
/* 8013E2D0  83 C3 28 10 */	lwz r30, 0x2810(r3)
/* 8013E2D4  28 1E 00 00 */	cmplwi r30, 0
/* 8013E2D8  41 82 00 10 */	beq lbl_8013E2E8
/* 8013E2DC  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8013E2E0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8013E2E4  41 82 00 20 */	beq lbl_8013E304
lbl_8013E2E8:
/* 8013E2E8  7F E3 FB 78 */	mr r3, r31
/* 8013E2EC  38 80 00 02 */	li r4, 2
/* 8013E2F0  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 8013E2F4  38 A5 F0 A8 */	addi r5, r5, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 8013E2F8  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 8013E2FC  4B FF 0A D5 */	bl procWolfFallInit__9daAlink_cFif
/* 8013E300  48 00 03 98 */	b lbl_8013E698
lbl_8013E304:
/* 8013E304  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 8013E308  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 8013E30C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013E310  40 80 00 34 */	bge lbl_8013E344
/* 8013E314  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8013E318  38 9E 05 38 */	addi r4, r30, 0x538
/* 8013E31C  48 13 28 E9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8013E320  7C 64 1B 78 */	mr r4, r3
/* 8013E324  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8013E328  38 A0 00 02 */	li r5, 2
/* 8013E32C  38 C0 20 00 */	li r6, 0x2000
/* 8013E330  38 E0 08 00 */	li r7, 0x800
/* 8013E334  48 13 22 0D */	bl cLib_addCalcAngleS__FPsssss
/* 8013E338  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013E33C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013E340  48 00 03 54 */	b lbl_8013E694
lbl_8013E344:
/* 8013E344  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 8013E348  2C 00 00 00 */	cmpwi r0, 0
/* 8013E34C  40 82 02 F4 */	bne lbl_8013E640
/* 8013E350  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8013E354  38 9E 05 38 */	addi r4, r30, 0x538
/* 8013E358  48 13 28 AD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8013E35C  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 8013E360  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013E364  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013E368  38 00 00 01 */	li r0, 1
/* 8013E36C  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8013E370  38 61 00 1C */	addi r3, r1, 0x1c
/* 8013E374  38 9E 05 38 */	addi r4, r30, 0x538
/* 8013E378  38 BF 34 E0 */	addi r5, r31, 0x34e0
/* 8013E37C  48 12 87 B9 */	bl __mi__4cXyzCFRC3Vec
/* 8013E380  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8013E384  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8013E388  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8013E38C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8013E390  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8013E394  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8013E398  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8013E39C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013E3A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8013E3A4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8013E3A8  38 61 00 10 */	addi r3, r1, 0x10
/* 8013E3AC  48 20 8D 8D */	bl PSVECSquareMag
/* 8013E3B0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013E3B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013E3B8  40 81 00 58 */	ble lbl_8013E410
/* 8013E3BC  FC 00 08 34 */	frsqrte f0, f1
/* 8013E3C0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8013E3C4  FC 44 00 32 */	fmul f2, f4, f0
/* 8013E3C8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8013E3CC  FC 00 00 32 */	fmul f0, f0, f0
/* 8013E3D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8013E3D4  FC 03 00 28 */	fsub f0, f3, f0
/* 8013E3D8  FC 02 00 32 */	fmul f0, f2, f0
/* 8013E3DC  FC 44 00 32 */	fmul f2, f4, f0
/* 8013E3E0  FC 00 00 32 */	fmul f0, f0, f0
/* 8013E3E4  FC 01 00 32 */	fmul f0, f1, f0
/* 8013E3E8  FC 03 00 28 */	fsub f0, f3, f0
/* 8013E3EC  FC 02 00 32 */	fmul f0, f2, f0
/* 8013E3F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8013E3F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8013E3F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8013E3FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8013E400  FC 02 00 32 */	fmul f0, f2, f0
/* 8013E404  FF E1 00 32 */	fmul f31, f1, f0
/* 8013E408  FF E0 F8 18 */	frsp f31, f31
/* 8013E40C  48 00 00 90 */	b lbl_8013E49C
lbl_8013E410:
/* 8013E410  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8013E414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013E418  40 80 00 10 */	bge lbl_8013E428
/* 8013E41C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013E420  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8013E424  48 00 00 78 */	b lbl_8013E49C
lbl_8013E428:
/* 8013E428  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8013E42C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8013E430  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8013E434  3C 00 7F 80 */	lis r0, 0x7f80
/* 8013E438  7C 03 00 00 */	cmpw r3, r0
/* 8013E43C  41 82 00 14 */	beq lbl_8013E450
/* 8013E440  40 80 00 40 */	bge lbl_8013E480
/* 8013E444  2C 03 00 00 */	cmpwi r3, 0
/* 8013E448  41 82 00 20 */	beq lbl_8013E468
/* 8013E44C  48 00 00 34 */	b lbl_8013E480
lbl_8013E450:
/* 8013E450  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013E454  41 82 00 0C */	beq lbl_8013E460
/* 8013E458  38 00 00 01 */	li r0, 1
/* 8013E45C  48 00 00 28 */	b lbl_8013E484
lbl_8013E460:
/* 8013E460  38 00 00 02 */	li r0, 2
/* 8013E464  48 00 00 20 */	b lbl_8013E484
lbl_8013E468:
/* 8013E468  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013E46C  41 82 00 0C */	beq lbl_8013E478
/* 8013E470  38 00 00 05 */	li r0, 5
/* 8013E474  48 00 00 10 */	b lbl_8013E484
lbl_8013E478:
/* 8013E478  38 00 00 03 */	li r0, 3
/* 8013E47C  48 00 00 08 */	b lbl_8013E484
lbl_8013E480:
/* 8013E480  38 00 00 04 */	li r0, 4
lbl_8013E484:
/* 8013E484  2C 00 00 01 */	cmpwi r0, 1
/* 8013E488  40 82 00 10 */	bne lbl_8013E498
/* 8013E48C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013E490  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8013E494  48 00 00 08 */	b lbl_8013E49C
lbl_8013E498:
/* 8013E498  FF E0 08 90 */	fmr f31, f1
lbl_8013E49C:
/* 8013E49C  38 61 00 28 */	addi r3, r1, 0x28
/* 8013E4A0  48 20 8C 99 */	bl PSVECSquareMag
/* 8013E4A4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013E4A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013E4AC  40 81 00 58 */	ble lbl_8013E504
/* 8013E4B0  FC 00 08 34 */	frsqrte f0, f1
/* 8013E4B4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8013E4B8  FC 44 00 32 */	fmul f2, f4, f0
/* 8013E4BC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8013E4C0  FC 00 00 32 */	fmul f0, f0, f0
/* 8013E4C4  FC 01 00 32 */	fmul f0, f1, f0
/* 8013E4C8  FC 03 00 28 */	fsub f0, f3, f0
/* 8013E4CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8013E4D0  FC 44 00 32 */	fmul f2, f4, f0
/* 8013E4D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8013E4D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8013E4DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8013E4E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8013E4E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8013E4E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8013E4EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8013E4F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8013E4F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8013E4F8  FF C1 00 32 */	fmul f30, f1, f0
/* 8013E4FC  FF C0 F0 18 */	frsp f30, f30
/* 8013E500  48 00 00 90 */	b lbl_8013E590
lbl_8013E504:
/* 8013E504  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8013E508  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013E50C  40 80 00 10 */	bge lbl_8013E51C
/* 8013E510  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013E514  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8013E518  48 00 00 78 */	b lbl_8013E590
lbl_8013E51C:
/* 8013E51C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8013E520  80 81 00 08 */	lwz r4, 8(r1)
/* 8013E524  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8013E528  3C 00 7F 80 */	lis r0, 0x7f80
/* 8013E52C  7C 03 00 00 */	cmpw r3, r0
/* 8013E530  41 82 00 14 */	beq lbl_8013E544
/* 8013E534  40 80 00 40 */	bge lbl_8013E574
/* 8013E538  2C 03 00 00 */	cmpwi r3, 0
/* 8013E53C  41 82 00 20 */	beq lbl_8013E55C
/* 8013E540  48 00 00 34 */	b lbl_8013E574
lbl_8013E544:
/* 8013E544  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013E548  41 82 00 0C */	beq lbl_8013E554
/* 8013E54C  38 00 00 01 */	li r0, 1
/* 8013E550  48 00 00 28 */	b lbl_8013E578
lbl_8013E554:
/* 8013E554  38 00 00 02 */	li r0, 2
/* 8013E558  48 00 00 20 */	b lbl_8013E578
lbl_8013E55C:
/* 8013E55C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013E560  41 82 00 0C */	beq lbl_8013E56C
/* 8013E564  38 00 00 05 */	li r0, 5
/* 8013E568  48 00 00 10 */	b lbl_8013E578
lbl_8013E56C:
/* 8013E56C  38 00 00 03 */	li r0, 3
/* 8013E570  48 00 00 08 */	b lbl_8013E578
lbl_8013E574:
/* 8013E574  38 00 00 04 */	li r0, 4
lbl_8013E578:
/* 8013E578  2C 00 00 01 */	cmpwi r0, 1
/* 8013E57C  40 82 00 10 */	bne lbl_8013E58C
/* 8013E580  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013E584  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8013E588  48 00 00 08 */	b lbl_8013E590
lbl_8013E58C:
/* 8013E58C  FF C0 08 90 */	fmr f30, f1
lbl_8013E590:
/* 8013E590  38 61 00 28 */	addi r3, r1, 0x28
/* 8013E594  48 12 8B BD */	bl atan2sY_XZ__4cXyzCFv
/* 8013E598  7C 60 07 34 */	extsh r0, r3
/* 8013E59C  7C 00 0E 70 */	srawi r0, r0, 1
/* 8013E5A0  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013E5A4  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8013E5A8  C0 02 93 D4 */	lfs f0, lit_11442(r2)
/* 8013E5AC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8013E5B0  EC 00 F0 24 */	fdivs f0, f0, f30
/* 8013E5B4  EC 01 00 2A */	fadds f0, f1, f0
/* 8013E5B8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8013E5BC  C0 1F 33 98 */	lfs f0, 0x3398(r31)
/* 8013E5C0  EC 1F 00 24 */	fdivs f0, f31, f0
/* 8013E5C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8013E5C8  FC 00 00 1E */	fctiwz f0, f0
/* 8013E5CC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8013E5D0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8013E5D4  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8013E5D8  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 8013E5DC  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 8013E5E0  C8 62 92 B0 */	lfd f3, lit_6025(r2)
/* 8013E5E4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8013E5E8  90 61 00 44 */	stw r3, 0x44(r1)
/* 8013E5EC  3C 00 43 30 */	lis r0, 0x4330
/* 8013E5F0  90 01 00 40 */	stw r0, 0x40(r1)
/* 8013E5F4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8013E5F8  EC 40 18 28 */	fsubs f2, f0, f3
/* 8013E5FC  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 8013E600  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 8013E604  EC 21 00 32 */	fmuls f1, f1, f0
/* 8013E608  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8013E60C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8013E610  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8013E614  EC 00 18 28 */	fsubs f0, f0, f3
/* 8013E618  EC 01 00 32 */	fmuls f0, f1, f0
/* 8013E61C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013E620  EC 24 00 28 */	fsubs f1, f4, f0
/* 8013E624  90 61 00 54 */	stw r3, 0x54(r1)
/* 8013E628  90 01 00 50 */	stw r0, 0x50(r1)
/* 8013E62C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8013E630  EC 00 18 28 */	fsubs f0, f0, f3
/* 8013E634  EC 01 00 24 */	fdivs f0, f1, f0
/* 8013E638  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8013E63C  48 00 00 58 */	b lbl_8013E694
lbl_8013E640:
/* 8013E640  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 8013E644  38 03 FF FF */	addi r0, r3, -1
/* 8013E648  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8013E64C  38 7E 05 38 */	addi r3, r30, 0x538
/* 8013E650  38 9F 34 E0 */	addi r4, r31, 0x34e0
/* 8013E654  48 20 8D 49 */	bl PSVECSquareDistance
/* 8013E658  C0 02 93 5C */	lfs f0, lit_8322(r2)
/* 8013E65C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013E660  40 80 00 10 */	bge lbl_8013E670
/* 8013E664  7F E3 FB 78 */	mr r3, r31
/* 8013E668  48 00 00 59 */	bl procWolfChainWaitInit__9daAlink_cFv
/* 8013E66C  48 00 00 28 */	b lbl_8013E694
lbl_8013E670:
/* 8013E670  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 8013E674  2C 00 00 00 */	cmpwi r0, 0
/* 8013E678  40 82 00 1C */	bne lbl_8013E694
/* 8013E67C  7F E3 FB 78 */	mr r3, r31
/* 8013E680  38 80 00 02 */	li r4, 2
/* 8013E684  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 8013E688  38 A5 F0 A8 */	addi r5, r5, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 8013E68C  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 8013E690  4B FF 07 41 */	bl procWolfFallInit__9daAlink_cFif
lbl_8013E694:
/* 8013E694  38 60 00 01 */	li r3, 1
lbl_8013E698:
/* 8013E698  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8013E69C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8013E6A0  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8013E6A4  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8013E6A8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8013E6AC  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8013E6B0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8013E6B4  7C 08 03 A6 */	mtlr r0
/* 8013E6B8  38 21 00 80 */	addi r1, r1, 0x80
/* 8013E6BC  4E 80 00 20 */	blr 
