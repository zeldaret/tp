lbl_8073E068:
/* 8073E068  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8073E06C  7C 08 02 A6 */	mflr r0
/* 8073E070  90 01 00 54 */	stw r0, 0x54(r1)
/* 8073E074  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8073E078  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8073E07C  7C 7F 1B 78 */	mr r31, r3
/* 8073E080  A8 03 06 66 */	lha r0, 0x666(r3)
/* 8073E084  3C 60 80 74 */	lis r3, lit_4215@ha
/* 8073E088  C8 63 1C 74 */	lfd f3, lit_4215@l(r3)
/* 8073E08C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073E090  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8073E094  3C 80 43 30 */	lis r4, 0x4330
/* 8073E098  90 81 00 18 */	stw r4, 0x18(r1)
/* 8073E09C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8073E0A0  EC 40 18 28 */	fsubs f2, f0, f3
/* 8073E0A4  A8 1F 06 12 */	lha r0, 0x612(r31)
/* 8073E0A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073E0AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073E0B0  90 81 00 20 */	stw r4, 0x20(r1)
/* 8073E0B4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8073E0B8  EC 20 18 28 */	fsubs f1, f0, f3
/* 8073E0BC  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 8073E0C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8073E0C4  EC 02 00 2A */	fadds f0, f2, f0
/* 8073E0C8  FC 00 00 1E */	fctiwz f0, f0
/* 8073E0CC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8073E0D0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8073E0D4  B0 1F 06 66 */	sth r0, 0x666(r31)
/* 8073E0D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070462@ha */
/* 8073E0DC  38 03 04 62 */	addi r0, r3, 0x0462 /* 0x00070462@l */
/* 8073E0E0  90 01 00 08 */	stw r0, 8(r1)
/* 8073E0E4  A8 1F 06 12 */	lha r0, 0x612(r31)
/* 8073E0E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073E0EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073E0F0  90 81 00 30 */	stw r4, 0x30(r1)
/* 8073E0F4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8073E0F8  EC 20 18 28 */	fsubs f1, f0, f3
/* 8073E0FC  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 8073E100  EC 21 00 32 */	fmuls f1, f1, f0
/* 8073E104  4B C2 3F A8 */	b __cvt_fp2unsigned
/* 8073E108  7C 65 1B 78 */	mr r5, r3
/* 8073E10C  38 7F 06 74 */	addi r3, r31, 0x674
/* 8073E110  38 81 00 08 */	addi r4, r1, 8
/* 8073E114  38 C0 FF FF */	li r6, -1
/* 8073E118  81 9F 06 74 */	lwz r12, 0x674(r31)
/* 8073E11C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8073E120  7D 89 03 A6 */	mtctr r12
/* 8073E124  4E 80 04 21 */	bctrl 
/* 8073E128  C0 5F 06 50 */	lfs f2, 0x650(r31)
/* 8073E12C  C0 3F 06 4C */	lfs f1, 0x64c(r31)
/* 8073E130  C0 1F 06 48 */	lfs f0, 0x648(r31)
/* 8073E134  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073E138  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8073E13C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8073E140  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8073E144  38 81 00 0C */	addi r4, r1, 0xc
/* 8073E148  4B B3 2A BC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8073E14C  B0 7F 06 1C */	sth r3, 0x61c(r31)
/* 8073E150  AB DF 04 DE */	lha r30, 0x4de(r31)
/* 8073E154  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8073E158  A8 9F 06 1C */	lha r4, 0x61c(r31)
/* 8073E15C  3C A0 80 74 */	lis r5, l_HIO@ha
/* 8073E160  38 A5 1D D0 */	addi r5, r5, l_HIO@l
/* 8073E164  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 8073E168  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 8073E16C  54 00 40 2E */	slwi r0, r0, 8
/* 8073E170  3C A0 80 74 */	lis r5, lit_4215@ha
/* 8073E174  C8 25 1C 74 */	lfd f1, lit_4215@l(r5)
/* 8073E178  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073E17C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8073E180  3C 00 43 30 */	lis r0, 0x4330
/* 8073E184  90 01 00 38 */	stw r0, 0x38(r1)
/* 8073E188  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8073E18C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8073E190  EC 02 00 32 */	fmuls f0, f2, f0
/* 8073E194  FC 00 00 1E */	fctiwz f0, f0
/* 8073E198  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8073E19C  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 8073E1A0  4B B3 29 F0 */	b cLib_chaseAngleS__FPsss
/* 8073E1A4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8073E1A8  7C 04 F0 50 */	subf r0, r4, r30
/* 8073E1AC  7C 1E 07 34 */	extsh r30, r0
/* 8073E1B0  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 8073E1B4  2C 00 00 46 */	cmpwi r0, 0x46
/* 8073E1B8  41 82 00 14 */	beq lbl_8073E1CC
/* 8073E1BC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8073E1C0  38 A0 00 20 */	li r5, 0x20
/* 8073E1C4  38 C0 10 00 */	li r6, 0x1000
/* 8073E1C8  4B B3 24 40 */	b cLib_addCalcAngleS2__FPssss
lbl_8073E1CC:
/* 8073E1CC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8073E1D0  3C 80 80 74 */	lis r4, lit_4213@ha
/* 8073E1D4  C0 44 1C 70 */	lfs f2, lit_4213@l(r4)
/* 8073E1D8  7C 1E 00 D0 */	neg r0, r30
/* 8073E1DC  3C 80 80 74 */	lis r4, lit_4215@ha
/* 8073E1E0  C8 24 1C 74 */	lfd f1, lit_4215@l(r4)
/* 8073E1E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073E1E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8073E1EC  3C 00 43 30 */	lis r0, 0x4330
/* 8073E1F0  90 01 00 40 */	stw r0, 0x40(r1)
/* 8073E1F4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8073E1F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8073E1FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8073E200  FC 00 00 1E */	fctiwz f0, f0
/* 8073E204  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8073E208  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8073E20C  38 A0 00 30 */	li r5, 0x30
/* 8073E210  4B B3 29 80 */	b cLib_chaseAngleS__FPsss
/* 8073E214  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8073E218  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8073E21C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8073E220  7C 08 03 A6 */	mtlr r0
/* 8073E224  38 21 00 50 */	addi r1, r1, 0x50
/* 8073E228  4E 80 00 20 */	blr 
