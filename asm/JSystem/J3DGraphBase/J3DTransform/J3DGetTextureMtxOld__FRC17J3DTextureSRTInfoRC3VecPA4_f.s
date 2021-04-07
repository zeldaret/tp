lbl_80311B80:
/* 80311B80  A8 03 00 08 */	lha r0, 8(r3)
/* 80311B84  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80311B88  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80311B8C  38 C6 9A 20 */	addi r6, r6, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80311B90  7C 06 04 2E */	lfsx f0, r6, r0
/* 80311B94  7C C6 02 14 */	add r6, r6, r0
/* 80311B98  C0 26 00 04 */	lfs f1, 4(r6)
/* 80311B9C  C0 43 00 00 */	lfs f2, 0(r3)
/* 80311BA0  EC 62 00 72 */	fmuls f3, f2, f1
/* 80311BA4  EC A2 00 32 */	fmuls f5, f2, f0
/* 80311BA8  C0 43 00 04 */	lfs f2, 4(r3)
/* 80311BAC  EC C2 00 32 */	fmuls f6, f2, f0
/* 80311BB0  EC E2 00 72 */	fmuls f7, f2, f1
/* 80311BB4  D0 65 00 00 */	stfs f3, 0(r5)
/* 80311BB8  FC 00 28 50 */	fneg f0, f5
/* 80311BBC  D0 05 00 04 */	stfs f0, 4(r5)
/* 80311BC0  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80311BC4  C0 84 00 00 */	lfs f4, 0(r4)
/* 80311BC8  FC 00 18 50 */	fneg f0, f3
/* 80311BCC  EC 20 01 32 */	fmuls f1, f0, f4
/* 80311BD0  C0 64 00 04 */	lfs f3, 4(r4)
/* 80311BD4  EC 05 00 F2 */	fmuls f0, f5, f3
/* 80311BD8  EC 01 00 2A */	fadds f0, f1, f0
/* 80311BDC  EC 04 00 2A */	fadds f0, f4, f0
/* 80311BE0  EC 02 00 2A */	fadds f0, f2, f0
/* 80311BE4  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 80311BE8  D0 C5 00 10 */	stfs f6, 0x10(r5)
/* 80311BEC  D0 E5 00 14 */	stfs f7, 0x14(r5)
/* 80311BF0  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80311BF4  FC 00 30 50 */	fneg f0, f6
/* 80311BF8  EC 20 01 32 */	fmuls f1, f0, f4
/* 80311BFC  EC 07 00 F2 */	fmuls f0, f7, f3
/* 80311C00  EC 01 00 28 */	fsubs f0, f1, f0
/* 80311C04  EC 03 00 2A */	fadds f0, f3, f0
/* 80311C08  EC 02 00 2A */	fadds f0, f2, f0
/* 80311C0C  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 80311C10  C0 02 C9 78 */	lfs f0, lit_435(r2)
/* 80311C14  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 80311C18  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 80311C1C  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 80311C20  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 80311C24  D0 05 00 08 */	stfs f0, 8(r5)
/* 80311C28  C0 02 C9 7C */	lfs f0, lit_526(r2)
/* 80311C2C  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 80311C30  4E 80 00 20 */	blr 
