lbl_8049AD94:
/* 8049AD94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049AD98  7C 08 02 A6 */	mflr r0
/* 8049AD9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049ADA0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8049ADA4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8049ADA8  7C 7E 1B 78 */	mr r30, r3
/* 8049ADAC  3C 60 80 4A */	lis r3, lit_3768@ha
/* 8049ADB0  3B E3 DC 84 */	addi r31, r3, lit_3768@l
/* 8049ADB4  38 7E 09 52 */	addi r3, r30, 0x952
/* 8049ADB8  48 00 2E A1 */	bl func_8049DC58
/* 8049ADBC  7C 60 07 35 */	extsh. r0, r3
/* 8049ADC0  41 82 00 88 */	beq lbl_8049AE48
/* 8049ADC4  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 8049ADC8  4B DC CB 8C */	b cM_rndF__Ff
/* 8049ADCC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8049ADD0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049ADD4  FC 00 00 1E */	fctiwz f0, f0
/* 8049ADD8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8049ADDC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8049ADE0  A8 1E 09 54 */	lha r0, 0x954(r30)
/* 8049ADE4  7C 00 1A 14 */	add r0, r0, r3
/* 8049ADE8  B0 1E 09 54 */	sth r0, 0x954(r30)
/* 8049ADEC  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 8049ADF0  A8 1E 09 52 */	lha r0, 0x952(r30)
/* 8049ADF4  C8 3F 01 08 */	lfd f1, 0x108(r31)
/* 8049ADF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8049ADFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049AE00  3C 00 43 30 */	lis r0, 0x4330
/* 8049AE04  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049AE08  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8049AE0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049AE10  EC 42 00 32 */	fmuls f2, f2, f0
/* 8049AE14  A8 1E 09 54 */	lha r0, 0x954(r30)
/* 8049AE18  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8049AE1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8049AE20  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8049AE24  7C 23 04 2E */	lfsx f1, r3, r0
/* 8049AE28  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 8049AE2C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8049AE30  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8049AE34  EC 00 00 72 */	fmuls f0, f0, f1
/* 8049AE38  FC 00 00 1E */	fctiwz f0, f0
/* 8049AE3C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8049AE40  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8049AE44  48 00 00 08 */	b lbl_8049AE4C
lbl_8049AE48:
/* 8049AE48  38 60 00 00 */	li r3, 0
lbl_8049AE4C:
/* 8049AE4C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8049AE50  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8049AE54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049AE58  7C 08 03 A6 */	mtlr r0
/* 8049AE5C  38 21 00 30 */	addi r1, r1, 0x30
/* 8049AE60  4E 80 00 20 */	blr 
