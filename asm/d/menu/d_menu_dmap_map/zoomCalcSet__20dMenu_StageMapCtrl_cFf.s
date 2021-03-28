lbl_801C1E74:
/* 801C1E74  C0 43 00 A4 */	lfs f2, 0xa4(r3)
/* 801C1E78  C0 03 00 AC */	lfs f0, 0xac(r3)
/* 801C1E7C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801C1E80  EC 01 00 32 */	fmuls f0, f1, f0
/* 801C1E84  EC 02 00 2A */	fadds f0, f2, f0
/* 801C1E88  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 801C1E8C  C0 43 00 A8 */	lfs f2, 0xa8(r3)
/* 801C1E90  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 801C1E94  EC 00 10 28 */	fsubs f0, f0, f2
/* 801C1E98  EC 01 00 32 */	fmuls f0, f1, f0
/* 801C1E9C  EC 02 00 2A */	fadds f0, f2, f0
/* 801C1EA0  D0 03 00 A0 */	stfs f0, 0xa0(r3)
/* 801C1EA4  C0 43 00 DC */	lfs f2, 0xdc(r3)
/* 801C1EA8  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 801C1EAC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801C1EB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801C1EB4  EC 02 00 2A */	fadds f0, f2, f0
/* 801C1EB8  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 801C1EBC  4E 80 00 20 */	blr 
