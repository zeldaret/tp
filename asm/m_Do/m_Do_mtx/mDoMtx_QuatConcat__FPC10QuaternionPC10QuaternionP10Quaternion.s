lbl_8000CB5C:
/* 8000CB5C  C1 43 00 0C */	lfs f10, 0xc(r3)
/* 8000CB60  C1 24 00 0C */	lfs f9, 0xc(r4)
/* 8000CB64  EC 2A 02 72 */	fmuls f1, f10, f9
/* 8000CB68  C1 03 00 00 */	lfs f8, 0(r3)
/* 8000CB6C  C0 E4 00 00 */	lfs f7, 0(r4)
/* 8000CB70  EC 08 01 F2 */	fmuls f0, f8, f7
/* 8000CB74  EC 21 00 28 */	fsubs f1, f1, f0
/* 8000CB78  C0 C3 00 04 */	lfs f6, 4(r3)
/* 8000CB7C  C0 A4 00 04 */	lfs f5, 4(r4)
/* 8000CB80  EC 06 01 72 */	fmuls f0, f6, f5
/* 8000CB84  EC 21 00 28 */	fsubs f1, f1, f0
/* 8000CB88  C0 83 00 08 */	lfs f4, 8(r3)
/* 8000CB8C  C0 64 00 08 */	lfs f3, 8(r4)
/* 8000CB90  EC 04 00 F2 */	fmuls f0, f4, f3
/* 8000CB94  EC 01 00 28 */	fsubs f0, f1, f0
/* 8000CB98  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 8000CB9C  EC 46 00 F2 */	fmuls f2, f6, f3
/* 8000CBA0  EC 2A 01 F2 */	fmuls f1, f10, f7
/* 8000CBA4  EC 08 02 72 */	fmuls f0, f8, f9
/* 8000CBA8  EC 01 00 2A */	fadds f0, f1, f0
/* 8000CBAC  EC 22 00 2A */	fadds f1, f2, f0
/* 8000CBB0  EC 04 01 72 */	fmuls f0, f4, f5
/* 8000CBB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8000CBB8  D0 05 00 00 */	stfs f0, 0(r5)
/* 8000CBBC  EC 44 01 F2 */	fmuls f2, f4, f7
/* 8000CBC0  EC 2A 01 72 */	fmuls f1, f10, f5
/* 8000CBC4  EC 06 02 72 */	fmuls f0, f6, f9
/* 8000CBC8  EC 01 00 2A */	fadds f0, f1, f0
/* 8000CBCC  EC 22 00 2A */	fadds f1, f2, f0
/* 8000CBD0  EC 08 00 F2 */	fmuls f0, f8, f3
/* 8000CBD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8000CBD8  D0 05 00 04 */	stfs f0, 4(r5)
/* 8000CBDC  EC 48 01 72 */	fmuls f2, f8, f5
/* 8000CBE0  EC 2A 00 F2 */	fmuls f1, f10, f3
/* 8000CBE4  EC 04 02 72 */	fmuls f0, f4, f9
/* 8000CBE8  EC 01 00 2A */	fadds f0, f1, f0
/* 8000CBEC  EC 22 00 2A */	fadds f1, f2, f0
/* 8000CBF0  EC 06 01 F2 */	fmuls f0, f6, f7
/* 8000CBF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8000CBF8  D0 05 00 08 */	stfs f0, 8(r5)
/* 8000CBFC  4E 80 00 20 */	blr 
