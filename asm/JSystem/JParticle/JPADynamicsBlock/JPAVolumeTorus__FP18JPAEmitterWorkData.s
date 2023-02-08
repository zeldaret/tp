lbl_8027B9F8:
/* 8027B9F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027B9FC  80 C3 00 00 */	lwz r6, 0(r3)
/* 8027BA00  80 06 00 C4 */	lwz r0, 0xc4(r6)
/* 8027BA04  3C 80 00 19 */	lis r4, 0x0019 /* 0x0019660D@ha */
/* 8027BA08  38 A4 66 0D */	addi r5, r4, 0x660D /* 0x0019660D@l */
/* 8027BA0C  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027BA10  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027BA14  38 04 F3 5F */	addi r0, r4, -3233
/* 8027BA18  90 06 00 C4 */	stw r0, 0xc4(r6)
/* 8027BA1C  54 00 84 3E */	srwi r0, r0, 0x10
/* 8027BA20  7C 00 07 34 */	extsh r0, r0
/* 8027BA24  C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 8027BA28  C8 22 B9 20 */	lfd f1, lit_2321(r2)
/* 8027BA2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8027BA30  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027BA34  3C 00 43 30 */	lis r0, 0x4330
/* 8027BA38  90 01 00 08 */	stw r0, 8(r1)
/* 8027BA3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8027BA40  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027BA44  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027BA48  FC 00 00 1E */	fctiwz f0, f0
/* 8027BA4C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8027BA50  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 8027BA54  80 C3 00 00 */	lwz r6, 0(r3)
/* 8027BA58  80 06 00 C4 */	lwz r0, 0xc4(r6)
/* 8027BA5C  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027BA60  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027BA64  38 04 F3 5F */	addi r0, r4, -3233
/* 8027BA68  90 06 00 C4 */	stw r0, 0xc4(r6)
/* 8027BA6C  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 8027BA70  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8027BA74  EC 81 00 32 */	fmuls f4, f1, f0
/* 8027BA78  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8027BA7C  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8027BA80  38 A4 00 04 */	addi r5, r4, 4
/* 8027BA84  54 E6 04 38 */	rlwinm r6, r7, 0, 0x10, 0x1c
/* 8027BA88  7C 05 34 2E */	lfsx f0, r5, r6
/* 8027BA8C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027BA90  54 00 84 38 */	rlwinm r0, r0, 0x10, 0x10, 0x1c
/* 8027BA94  7C 65 04 2E */	lfsx f3, r5, r0
/* 8027BA98  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027BA9C  7C 04 04 2E */	lfsx f0, r4, r0
/* 8027BAA0  EC 24 00 32 */	fmuls f1, f4, f0
/* 8027BAA4  7C 04 34 2E */	lfsx f0, r4, r6
/* 8027BAA8  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027BAAC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8027BAB0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8027BAB4  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 8027BAB8  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 8027BABC  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8027BAC0  C0 83 00 34 */	lfs f4, 0x34(r3)
/* 8027BAC4  7C 05 34 2E */	lfsx f0, r5, r6
/* 8027BAC8  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027BACC  EC 61 00 2A */	fadds f3, f1, f0
/* 8027BAD0  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 8027BAD4  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8027BAD8  7C 04 34 2E */	lfsx f0, r4, r6
/* 8027BADC  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027BAE0  EC 01 00 2A */	fadds f0, f1, f0
/* 8027BAE4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8027BAE8  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8027BAEC  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 8027BAF0  E0 23 00 10 */	psq_l f1, 16(r3), 0, 0 /* qr0 */
/* 8027BAF4  E0 03 01 14 */	psq_l f0, 276(r3), 0, 0 /* qr0 */
/* 8027BAF8  10 01 00 32 */	ps_mul f0, f1, f0
/* 8027BAFC  F0 03 00 1C */	psq_st f0, 28(r3), 0, 0 /* qr0 */
/* 8027BB00  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8027BB04  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 8027BB08  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027BB0C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8027BB10  38 21 00 20 */	addi r1, r1, 0x20
/* 8027BB14  4E 80 00 20 */	blr 
