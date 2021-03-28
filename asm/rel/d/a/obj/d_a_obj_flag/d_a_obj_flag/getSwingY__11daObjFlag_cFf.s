lbl_80BEBE64:
/* 80BEBE64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BEBE68  3C 80 80 BF */	lis r4, M_attr__11daObjFlag_c@ha
/* 80BEBE6C  38 84 C4 EC */	addi r4, r4, M_attr__11daObjFlag_c@l
/* 80BEBE70  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 80BEBE74  EC 80 00 72 */	fmuls f4, f0, f1
/* 80BEBE78  C0 04 00 64 */	lfs f0, 0x64(r4)
/* 80BEBE7C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BEBE80  40 81 00 08 */	ble lbl_80BEBE88
/* 80BEBE84  FC 80 00 90 */	fmr f4, f0
lbl_80BEBE88:
/* 80BEBE88  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80BEBE8C  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80BEBE90  40 82 00 0C */	bne lbl_80BEBE9C
/* 80BEBE94  FC 20 20 90 */	fmr f1, f4
/* 80BEBE98  48 00 01 28 */	b lbl_80BEBFC0
lbl_80BEBE9C:
/* 80BEBE9C  A9 03 05 E2 */	lha r8, 0x5e2(r3)
/* 80BEBEA0  55 00 04 38 */	rlwinm r0, r8, 0, 0x10, 0x1c
/* 80BEBEA4  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 80BEBEA8  38 E5 9A 20 */	addi r7, r5, sincosTable___5JMath@l
/* 80BEBEAC  7C 67 04 2E */	lfsx f3, r7, r0
/* 80BEBEB0  38 C4 00 00 */	addi r6, r4, 0
/* 80BEBEB4  A8 06 00 14 */	lha r0, 0x14(r6)
/* 80BEBEB8  C8 24 00 50 */	lfd f1, 0x50(r4)
/* 80BEBEBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BEBEC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BEBEC4  3C A0 43 30 */	lis r5, 0x4330
/* 80BEBEC8  90 A1 00 08 */	stw r5, 8(r1)
/* 80BEBECC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BEBED0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BEBED4  EC A0 00 F2 */	fmuls f5, f0, f3
/* 80BEBED8  A8 03 05 E4 */	lha r0, 0x5e4(r3)
/* 80BEBEDC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BEBEE0  7C 67 04 2E */	lfsx f3, r7, r0
/* 80BEBEE4  A8 06 00 16 */	lha r0, 0x16(r6)
/* 80BEBEE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BEBEEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEBEF0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80BEBEF4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BEBEF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BEBEFC  EC C0 00 F2 */	fmuls f6, f0, f3
/* 80BEBF00  A8 03 05 E6 */	lha r0, 0x5e6(r3)
/* 80BEBF04  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BEBF08  7C 67 04 2E */	lfsx f3, r7, r0
/* 80BEBF0C  A8 06 00 18 */	lha r0, 0x18(r6)
/* 80BEBF10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BEBF14  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BEBF18  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80BEBF1C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BEBF20  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BEBF24  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80BEBF28  A8 A6 00 1C */	lha r5, 0x1c(r6)
/* 80BEBF2C  7C A0 07 35 */	extsh. r0, r5
/* 80BEBF30  40 82 00 08 */	bne lbl_80BEBF38
/* 80BEBF34  FC A0 10 90 */	fmr f5, f2
lbl_80BEBF38:
/* 80BEBF38  38 C4 00 00 */	addi r6, r4, 0
/* 80BEBF3C  A8 06 00 1E */	lha r0, 0x1e(r6)
/* 80BEBF40  2C 00 00 00 */	cmpwi r0, 0
/* 80BEBF44  40 82 00 08 */	bne lbl_80BEBF4C
/* 80BEBF48  C0 C4 00 40 */	lfs f6, 0x40(r4)
lbl_80BEBF4C:
/* 80BEBF4C  38 E4 00 00 */	addi r7, r4, 0
/* 80BEBF50  A8 07 00 20 */	lha r0, 0x20(r7)
/* 80BEBF54  2C 00 00 00 */	cmpwi r0, 0
/* 80BEBF58  40 82 00 08 */	bne lbl_80BEBF60
/* 80BEBF5C  C0 24 00 40 */	lfs f1, 0x40(r4)
lbl_80BEBF60:
/* 80BEBF60  7C 08 2A 14 */	add r0, r8, r5
/* 80BEBF64  B0 03 05 E2 */	sth r0, 0x5e2(r3)
/* 80BEBF68  A8 A3 05 E4 */	lha r5, 0x5e4(r3)
/* 80BEBF6C  A8 06 00 1E */	lha r0, 0x1e(r6)
/* 80BEBF70  7C 05 02 14 */	add r0, r5, r0
/* 80BEBF74  B0 03 05 E4 */	sth r0, 0x5e4(r3)
/* 80BEBF78  A8 A3 05 E6 */	lha r5, 0x5e6(r3)
/* 80BEBF7C  A8 07 00 20 */	lha r0, 0x20(r7)
/* 80BEBF80  7C 05 02 14 */	add r0, r5, r0
/* 80BEBF84  B0 03 05 E6 */	sth r0, 0x5e6(r3)
/* 80BEBF88  EC 04 28 2A */	fadds f0, f4, f5
/* 80BEBF8C  EC 06 00 2A */	fadds f0, f6, f0
/* 80BEBF90  EC 01 00 2A */	fadds f0, f1, f0
/* 80BEBF94  FC 00 00 1E */	fctiwz f0, f0
/* 80BEBF98  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BEBF9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BEBFA0  7C 00 07 34 */	extsh r0, r0
/* 80BEBFA4  C8 24 00 50 */	lfd f1, 0x50(r4)
/* 80BEBFA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BEBFAC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BEBFB0  3C 00 43 30 */	lis r0, 0x4330
/* 80BEBFB4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BEBFB8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BEBFBC  EC 20 08 28 */	fsubs f1, f0, f1
lbl_80BEBFC0:
/* 80BEBFC0  38 21 00 30 */	addi r1, r1, 0x30
/* 80BEBFC4  4E 80 00 20 */	blr 
