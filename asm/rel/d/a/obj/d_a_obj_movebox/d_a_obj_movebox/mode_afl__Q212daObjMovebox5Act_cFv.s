lbl_8047FCE4:
/* 8047FCE4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8047FCE8  7C 08 02 A6 */	mflr r0
/* 8047FCEC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047FCF0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8047FCF4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8047FCF8  39 61 00 30 */	addi r11, r1, 0x30
/* 8047FCFC  4B EE 24 E0 */	b _savegpr_29
/* 8047FD00  7C 7E 1B 78 */	mr r30, r3
/* 8047FD04  3C 60 80 48 */	lis r3, M_lin5__Q212daObjMovebox5Bgc_c@ha
/* 8047FD08  3B E3 0F 28 */	addi r31, r3, M_lin5__Q212daObjMovebox5Bgc_c@l
/* 8047FD0C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8047FD10  C0 1E 07 88 */	lfs f0, 0x788(r30)
/* 8047FD14  EC 21 00 28 */	fsubs f1, f1, f0
/* 8047FD18  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8047FD1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047FD20  4C 41 13 82 */	cror 2, 1, 2
/* 8047FD24  40 82 00 0C */	bne lbl_8047FD30
/* 8047FD28  FF E0 00 90 */	fmr f31, f0
/* 8047FD2C  48 00 00 3C */	b lbl_8047FD68
lbl_8047FD30:
/* 8047FD30  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 8047FD34  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 8047FD38  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047FD3C  7C 63 02 14 */	add r3, r3, r0
/* 8047FD40  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 8047FD44  FC 00 00 50 */	fneg f0, f0
/* 8047FD48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047FD4C  4C 40 13 82 */	cror 2, 0, 2
/* 8047FD50  40 82 00 0C */	bne lbl_8047FD5C
/* 8047FD54  C3 FF 01 D4 */	lfs f31, 0x1d4(r31)
/* 8047FD58  48 00 00 10 */	b lbl_8047FD68
lbl_8047FD5C:
/* 8047FD5C  FC 20 08 50 */	fneg f1, f1
/* 8047FD60  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 8047FD64  EF E1 00 32 */	fmuls f31, f1, f0
lbl_8047FD68:
/* 8047FD68  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 8047FD6C  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 8047FD70  3B BF 02 40 */	addi r29, r31, 0x240
/* 8047FD74  7F BD 02 14 */	add r29, r29, r0
/* 8047FD78  4B DE 7A F4 */	b cM_rnd__Fv
/* 8047FD7C  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 8047FD80  EC 40 08 2A */	fadds f2, f0, f1
/* 8047FD84  A8 1D 00 38 */	lha r0, 0x38(r29)
/* 8047FD88  C8 3F 07 50 */	lfd f1, 0x750(r31)
/* 8047FD8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047FD90  90 01 00 0C */	stw r0, 0xc(r1)
/* 8047FD94  3C 00 43 30 */	lis r0, 0x4330
/* 8047FD98  90 01 00 08 */	stw r0, 8(r1)
/* 8047FD9C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8047FDA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8047FDA4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8047FDA8  FC 00 00 1E */	fctiwz f0, f0
/* 8047FDAC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8047FDB0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8047FDB4  A8 1E 08 B8 */	lha r0, 0x8b8(r30)
/* 8047FDB8  7C 00 1A 14 */	add r0, r0, r3
/* 8047FDBC  B0 1E 08 B8 */	sth r0, 0x8b8(r30)
/* 8047FDC0  A8 1E 08 B8 */	lha r0, 0x8b8(r30)
/* 8047FDC4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8047FDC8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8047FDCC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8047FDD0  7C 63 04 2E */	lfsx f3, r3, r0
/* 8047FDD4  C0 5E 08 BC */	lfs f2, 0x8bc(r30)
/* 8047FDD8  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 8047FDDC  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 8047FDE0  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047FDE4  7C 63 02 14 */	add r3, r3, r0
/* 8047FDE8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8047FDEC  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8047FDF0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8047FDF4  EC 21 00 2A */	fadds f1, f1, f0
/* 8047FDF8  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8047FDFC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8047FE00  EC 01 00 2A */	fadds f0, f1, f0
/* 8047FE04  EC 02 00 2A */	fadds f0, f2, f0
/* 8047FE08  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8047FE0C  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8047FE10  D0 1E 08 BC */	stfs f0, 0x8bc(r30)
/* 8047FE14  80 1E 08 A8 */	lwz r0, 0x8a8(r30)
/* 8047FE18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8047FE1C  40 82 00 0C */	bne lbl_8047FE28
/* 8047FE20  7F C3 F3 78 */	mr r3, r30
/* 8047FE24  4B FF F2 F9 */	bl afl_sway__Q212daObjMovebox5Act_cFv
lbl_8047FE28:
/* 8047FE28  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 8047FE2C  EC 60 F8 28 */	fsubs f3, f0, f31
/* 8047FE30  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 8047FE34  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 8047FE38  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047FE3C  7C 63 02 14 */	add r3, r3, r0
/* 8047FE40  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 8047FE44  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8047FE48  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8047FE4C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8047FE50  EC 21 00 2A */	fadds f1, f1, f0
/* 8047FE54  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8047FE58  EC 5F 00 32 */	fmuls f2, f31, f0
/* 8047FE5C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8047FE60  EC 03 00 32 */	fmuls f0, f3, f0
/* 8047FE64  EC 42 00 2A */	fadds f2, f2, f0
/* 8047FE68  C0 7E 07 88 */	lfs f3, 0x788(r30)
/* 8047FE6C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8047FE70  EC 03 00 28 */	fsubs f0, f3, f0
/* 8047FE74  D0 1E 08 D8 */	stfs f0, 0x8d8(r30)
/* 8047FE78  C0 7E 08 D8 */	lfs f3, 0x8d8(r30)
/* 8047FE7C  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8047FE80  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8047FE84  40 80 00 0C */	bge lbl_8047FE90
/* 8047FE88  D0 1E 08 D8 */	stfs f0, 0x8d8(r30)
/* 8047FE8C  48 00 00 24 */	b lbl_8047FEB0
lbl_8047FE90:
/* 8047FE90  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 8047FE94  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 8047FE98  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047FE9C  38 04 00 68 */	addi r0, r4, 0x68
/* 8047FEA0  7C 03 04 2E */	lfsx f0, r3, r0
/* 8047FEA4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8047FEA8  40 81 00 08 */	ble lbl_8047FEB0
/* 8047FEAC  D0 1E 08 D8 */	stfs f0, 0x8d8(r30)
lbl_8047FEB0:
/* 8047FEB0  7F C3 F3 78 */	mr r3, r30
/* 8047FEB4  38 80 00 00 */	li r4, 0
/* 8047FEB8  3C A0 80 43 */	lis r5, Zero__4cXyz@ha
/* 8047FEBC  38 A5 0C F4 */	addi r5, r5, Zero__4cXyz@l
/* 8047FEC0  4B BB 75 00 */	b posMoveF_stream__5daObjFP10fopAc_ac_cPC4cXyzPC4cXyzff
/* 8047FEC4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8047FEC8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8047FECC  39 61 00 30 */	addi r11, r1, 0x30
/* 8047FED0  4B EE 23 58 */	b _restgpr_29
/* 8047FED4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8047FED8  7C 08 03 A6 */	mtlr r0
/* 8047FEDC  38 21 00 40 */	addi r1, r1, 0x40
/* 8047FEE0  4E 80 00 20 */	blr 
