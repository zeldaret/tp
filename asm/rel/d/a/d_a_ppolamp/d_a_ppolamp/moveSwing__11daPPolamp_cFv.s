lbl_80D4CFB0:
/* 80D4CFB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4CFB4  7C 08 02 A6 */	mflr r0
/* 80D4CFB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4CFBC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D4CFC0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D4CFC4  7C 7E 1B 78 */	mr r30, r3
/* 80D4CFC8  3C 60 80 D5 */	lis r3, lit_3757@ha
/* 80D4CFCC  3B E3 D2 7C */	addi r31, r3, lit_3757@l
/* 80D4CFD0  80 1E 05 98 */	lwz r0, 0x598(r30)
/* 80D4CFD4  1C 60 00 41 */	mulli r3, r0, 0x41
/* 80D4CFD8  38 03 FE 0C */	addi r0, r3, -500
/* 80D4CFDC  7C 05 07 34 */	extsh r5, r0
/* 80D4CFE0  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80D4CFE4  C0 5E 05 A4 */	lfs f2, 0x5a4(r30)
/* 80D4CFE8  88 1E 05 9C */	lbz r0, 0x59c(r30)
/* 80D4CFEC  7C 00 07 74 */	extsb r0, r0
/* 80D4CFF0  7C 00 29 D6 */	mullw r0, r0, r5
/* 80D4CFF4  C8 3F 00 40 */	lfd f1, 0x40(r31)
/* 80D4CFF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D4CFFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D4D000  3C 80 43 30 */	lis r4, 0x4330
/* 80D4D004  90 81 00 08 */	stw r4, 8(r1)
/* 80D4D008  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D4D00C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D4D010  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D4D014  FC 00 00 1E */	fctiwz f0, f0
/* 80D4D018  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D4D01C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D020  7C 03 02 14 */	add r0, r3, r0
/* 80D4D024  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80D4D028  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80D4D02C  A8 1E 05 9E */	lha r0, 0x59e(r30)
/* 80D4D030  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D4D034  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D4D038  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D4D03C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80D4D040  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D4D044  C0 1E 05 A4 */	lfs f0, 0x5a4(r30)
/* 80D4D048  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D4D04C  FC 00 00 1E */	fctiwz f0, f0
/* 80D4D050  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80D4D054  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D4D058  7C 03 02 14 */	add r0, r3, r0
/* 80D4D05C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80D4D060  2C 05 01 F4 */	cmpwi r5, 0x1f4
/* 80D4D064  40 81 00 84 */	ble lbl_80D4D0E8
/* 80D4D068  38 00 00 00 */	li r0, 0
/* 80D4D06C  90 1E 05 98 */	stw r0, 0x598(r30)
/* 80D4D070  88 1E 05 9C */	lbz r0, 0x59c(r30)
/* 80D4D074  1C 00 FF FF */	mulli r0, r0, -1
/* 80D4D078  98 1E 05 9C */	stb r0, 0x59c(r30)
/* 80D4D07C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80D4D080  4B 51 A9 0C */	b cM_rndFX__Ff
/* 80D4D084  FC 00 08 1E */	fctiwz f0, f1
/* 80D4D088  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80D4D08C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D4D090  B0 1E 05 9E */	sth r0, 0x59e(r30)
/* 80D4D094  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80D4D098  4B 51 A8 BC */	b cM_rndF__Ff
/* 80D4D09C  FC 40 08 90 */	fmr f2, f1
/* 80D4D0A0  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80D4D0A4  C0 3E 05 A8 */	lfs f1, 0x5a8(r30)
/* 80D4D0A8  4B 52 36 98 */	b cLib_chaseF__FPfff
/* 80D4D0AC  2C 03 00 00 */	cmpwi r3, 0
/* 80D4D0B0  41 82 00 38 */	beq lbl_80D4D0E8
/* 80D4D0B4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80D4D0B8  4B 51 A8 9C */	b cM_rndF__Ff
/* 80D4D0BC  D0 3E 05 A8 */	stfs f1, 0x5a8(r30)
/* 80D4D0C0  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 80D4D0C4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80D4D0C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D4D0CC  40 80 00 1C */	bge lbl_80D4D0E8
/* 80D4D0D0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80D4D0D4  4B 51 A8 80 */	b cM_rndF__Ff
/* 80D4D0D8  FC 00 08 1E */	fctiwz f0, f1
/* 80D4D0DC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80D4D0E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D4D0E4  98 1E 05 A0 */	stb r0, 0x5a0(r30)
lbl_80D4D0E8:
/* 80D4D0E8  80 7E 05 98 */	lwz r3, 0x598(r30)
/* 80D4D0EC  38 03 00 01 */	addi r0, r3, 1
/* 80D4D0F0  90 1E 05 98 */	stw r0, 0x598(r30)
/* 80D4D0F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D4D0F8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D4D0FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4D100  7C 08 03 A6 */	mtlr r0
/* 80D4D104  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4D108  4E 80 00 20 */	blr 
