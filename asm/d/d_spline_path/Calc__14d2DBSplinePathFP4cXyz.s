lbl_80097A6C:
/* 80097A6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80097A70  C0 E4 00 1C */	lfs f7, 0x1c(r4)
/* 80097A74  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80097A78  1C E0 00 0C */	mulli r7, r0, 0xc
/* 80097A7C  7C 05 3C 2E */	lfsx f0, r5, r7
/* 80097A80  EC 47 00 32 */	fmuls f2, f7, f0
/* 80097A84  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80097A88  80 04 00 20 */	lwz r0, 0x20(r4)
/* 80097A8C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80097A90  7C 05 34 2E */	lfsx f0, r5, r6
/* 80097A94  EC 26 00 32 */	fmuls f1, f6, f0
/* 80097A98  C0 A4 00 18 */	lfs f5, 0x18(r4)
/* 80097A9C  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80097AA0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80097AA4  7C 05 04 2E */	lfsx f0, r5, r0
/* 80097AA8  EC 05 00 32 */	fmuls f0, f5, f0
/* 80097AAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80097AB0  EC 82 00 2A */	fadds f4, f2, f0
/* 80097AB4  D0 81 00 08 */	stfs f4, 8(r1)
/* 80097AB8  7C E5 3A 14 */	add r7, r5, r7
/* 80097ABC  C0 07 00 04 */	lfs f0, 4(r7)
/* 80097AC0  EC 47 00 32 */	fmuls f2, f7, f0
/* 80097AC4  7C C5 32 14 */	add r6, r5, r6
/* 80097AC8  C0 06 00 04 */	lfs f0, 4(r6)
/* 80097ACC  EC 26 00 32 */	fmuls f1, f6, f0
/* 80097AD0  7C 85 02 14 */	add r4, r5, r0
/* 80097AD4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80097AD8  EC 05 00 32 */	fmuls f0, f5, f0
/* 80097ADC  EC 01 00 2A */	fadds f0, f1, f0
/* 80097AE0  EC 62 00 2A */	fadds f3, f2, f0
/* 80097AE4  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80097AE8  C0 07 00 08 */	lfs f0, 8(r7)
/* 80097AEC  EC 47 00 32 */	fmuls f2, f7, f0
/* 80097AF0  C0 06 00 08 */	lfs f0, 8(r6)
/* 80097AF4  EC 26 00 32 */	fmuls f1, f6, f0
/* 80097AF8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80097AFC  EC 05 00 32 */	fmuls f0, f5, f0
/* 80097B00  EC 01 00 2A */	fadds f0, f1, f0
/* 80097B04  EC 02 00 2A */	fadds f0, f2, f0
/* 80097B08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80097B0C  D0 83 00 00 */	stfs f4, 0(r3)
/* 80097B10  D0 63 00 04 */	stfs f3, 4(r3)
/* 80097B14  D0 03 00 08 */	stfs f0, 8(r3)
/* 80097B18  38 21 00 20 */	addi r1, r1, 0x20
/* 80097B1C  4E 80 00 20 */	blr 
