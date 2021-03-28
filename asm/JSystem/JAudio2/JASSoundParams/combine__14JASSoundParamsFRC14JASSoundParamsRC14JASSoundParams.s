lbl_8029E47C:
/* 8029E47C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8029E480  C0 05 00 00 */	lfs f0, 0(r5)
/* 8029E484  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029E488  D0 03 00 00 */	stfs f0, 0(r3)
/* 8029E48C  C0 24 00 08 */	lfs f1, 8(r4)
/* 8029E490  C0 05 00 08 */	lfs f0, 8(r5)
/* 8029E494  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029E498  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029E49C  C0 24 00 04 */	lfs f1, 4(r4)
/* 8029E4A0  C0 05 00 04 */	lfs f0, 4(r5)
/* 8029E4A4  EC 01 00 2A */	fadds f0, f1, f0
/* 8029E4A8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8029E4AC  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8029E4B0  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8029E4B4  EC 21 00 2A */	fadds f1, f1, f0
/* 8029E4B8  C0 02 BD 6C */	lfs f0, lit_311(r2)
/* 8029E4BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8029E4C0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8029E4C4  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8029E4C8  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 8029E4CC  EC 01 00 2A */	fadds f0, f1, f0
/* 8029E4D0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8029E4D4  4E 80 00 20 */	blr 
