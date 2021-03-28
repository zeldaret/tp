lbl_80346CE4:
/* 80346CE4  ED 44 18 28 */	fsubs f10, f4, f3
/* 80346CE8  C1 62 CB 08 */	lfs f11, lit_96(r2)
/* 80346CEC  EC 01 10 28 */	fsubs f0, f1, f2
/* 80346CF0  C1 22 CB 18 */	lfs f9, lit_206(r2)
/* 80346CF4  EC 64 18 2A */	fadds f3, f4, f3
/* 80346CF8  ED 8B 50 24 */	fdivs f12, f11, f10
/* 80346CFC  ED 4B 00 24 */	fdivs f10, f11, f0
/* 80346D00  EC 89 03 32 */	fmuls f4, f9, f12
/* 80346D04  FC 60 18 50 */	fneg f3, f3
/* 80346D08  EC 01 10 2A */	fadds f0, f1, f2
/* 80346D0C  EC 24 01 72 */	fmuls f1, f4, f5
/* 80346D10  EC 4C 00 F2 */	fmuls f2, f12, f3
/* 80346D14  FC 00 00 50 */	fneg f0, f0
/* 80346D18  D0 23 00 00 */	stfs f1, 0(r3)
/* 80346D1C  EC 29 02 B2 */	fmuls f1, f9, f10
/* 80346D20  EC 45 00 B2 */	fmuls f2, f5, f2
/* 80346D24  C0 62 CB 0C */	lfs f3, lit_97(r2)
/* 80346D28  EC 0A 00 32 */	fmuls f0, f10, f0
/* 80346D2C  D0 63 00 04 */	stfs f3, 4(r3)
/* 80346D30  EC 47 10 2A */	fadds f2, f7, f2
/* 80346D34  EC 21 01 B2 */	fmuls f1, f1, f6
/* 80346D38  D0 63 00 08 */	stfs f3, 8(r3)
/* 80346D3C  EC 06 00 32 */	fmuls f0, f6, f0
/* 80346D40  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80346D44  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 80346D48  EC 08 00 2A */	fadds f0, f8, f0
/* 80346D4C  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80346D50  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 80346D54  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80346D58  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80346D5C  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 80346D60  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 80346D64  D1 63 00 2C */	stfs f11, 0x2c(r3)
/* 80346D68  4E 80 00 20 */	blr 
