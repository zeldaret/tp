lbl_80311CE4:
/* 80311CE4  A8 03 00 08 */	lha r0, 8(r3)
/* 80311CE8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80311CEC  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 80311CF0  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l
/* 80311CF4  7C C5 04 2E */	lfsx f6, r5, r0
/* 80311CF8  7C A5 02 14 */	add r5, r5, r0
/* 80311CFC  C0 E5 00 04 */	lfs f7, 4(r5)
/* 80311D00  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80311D04  C0 A2 C9 80 */	lfs f5, lit_557(r2)
/* 80311D08  ED 00 28 28 */	fsubs f8, f0, f5
/* 80311D0C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80311D10  EC 40 28 28 */	fsubs f2, f0, f5
/* 80311D14  C0 83 00 00 */	lfs f4, 0(r3)
/* 80311D18  EC 04 01 F2 */	fmuls f0, f4, f7
/* 80311D1C  D0 04 00 00 */	stfs f0, 0(r4)
/* 80311D20  C0 63 00 04 */	lfs f3, 4(r3)
/* 80311D24  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80311D28  D0 04 00 04 */	stfs f0, 4(r4)
/* 80311D2C  EC 28 01 F2 */	fmuls f1, f8, f7
/* 80311D30  EC 42 18 2A */	fadds f2, f2, f3
/* 80311D34  EC 06 00 B2 */	fmuls f0, f6, f2
/* 80311D38  EC 01 00 28 */	fsubs f0, f1, f0
/* 80311D3C  EC 05 00 2A */	fadds f0, f5, f0
/* 80311D40  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80311D44  FC 00 20 50 */	fneg f0, f4
/* 80311D48  EC 00 01 B2 */	fmuls f0, f0, f6
/* 80311D4C  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80311D50  EC 03 01 F2 */	fmuls f0, f3, f7
/* 80311D54  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 80311D58  FC 00 40 50 */	fneg f0, f8
/* 80311D5C  EC 20 01 B2 */	fmuls f1, f0, f6
/* 80311D60  EC 07 00 B2 */	fmuls f0, f7, f2
/* 80311D64  EC 01 00 28 */	fsubs f0, f1, f0
/* 80311D68  EC 05 00 2A */	fadds f0, f5, f0
/* 80311D6C  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80311D70  C0 02 C9 78 */	lfs f0, lit_435(r2)
/* 80311D74  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 80311D78  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 80311D7C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80311D80  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80311D84  D0 04 00 08 */	stfs f0, 8(r4)
/* 80311D88  C0 02 C9 7C */	lfs f0, lit_526(r2)
/* 80311D8C  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 80311D90  4E 80 00 20 */	blr 
