lbl_80154DA8:
/* 80154DA8  38 00 00 00 */	li r0, 0
/* 80154DAC  ED 05 18 28 */	fsubs f8, f5, f3
/* 80154DB0  ED 26 20 28 */	fsubs f9, f6, f4
/* 80154DB4  EC A8 02 32 */	fmuls f5, f8, f8
/* 80154DB8  EC 09 02 72 */	fmuls f0, f9, f9
/* 80154DBC  EC E5 00 2A */	fadds f7, f5, f0
/* 80154DC0  C0 C2 99 D8 */	lfs f6, lit_4116(r2)
/* 80154DC4  FC 06 38 00 */	fcmpu cr0, f6, f7
/* 80154DC8  40 82 00 10 */	bne lbl_80154DD8
/* 80154DCC  D0 C5 00 00 */	stfs f6, 0(r5)
/* 80154DD0  38 60 00 00 */	li r3, 0
/* 80154DD4  4E 80 00 20 */	blr 
lbl_80154DD8:
/* 80154DD8  EC 01 18 28 */	fsubs f0, f1, f3
/* 80154DDC  EC A8 00 32 */	fmuls f5, f8, f0
/* 80154DE0  EC 02 20 28 */	fsubs f0, f2, f4
/* 80154DE4  EC 09 00 32 */	fmuls f0, f9, f0
/* 80154DE8  EC 05 00 2A */	fadds f0, f5, f0
/* 80154DEC  EC A0 38 24 */	fdivs f5, f0, f7
/* 80154DF0  FC 06 28 40 */	fcmpo cr0, f6, f5
/* 80154DF4  4C 40 13 82 */	cror 2, 0, 2
/* 80154DF8  40 82 00 18 */	bne lbl_80154E10
/* 80154DFC  C0 02 99 DC */	lfs f0, lit_4140(r2)
/* 80154E00  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80154E04  4C 40 13 82 */	cror 2, 0, 2
/* 80154E08  40 82 00 08 */	bne lbl_80154E10
/* 80154E0C  38 00 00 01 */	li r0, 1
lbl_80154E10:
/* 80154E10  EC 08 01 72 */	fmuls f0, f8, f5
/* 80154E14  EC 03 00 2A */	fadds f0, f3, f0
/* 80154E18  D0 03 00 00 */	stfs f0, 0(r3)
/* 80154E1C  EC 09 01 72 */	fmuls f0, f9, f5
/* 80154E20  EC 04 00 2A */	fadds f0, f4, f0
/* 80154E24  D0 04 00 00 */	stfs f0, 0(r4)
/* 80154E28  C0 83 00 00 */	lfs f4, 0(r3)
/* 80154E2C  EC 04 08 28 */	fsubs f0, f4, f1
/* 80154E30  EC 60 00 32 */	fmuls f3, f0, f0
/* 80154E34  C0 04 00 00 */	lfs f0, 0(r4)
/* 80154E38  EC 20 10 28 */	fsubs f1, f0, f2
/* 80154E3C  EC 04 10 28 */	fsubs f0, f4, f2
/* 80154E40  EC 01 00 32 */	fmuls f0, f1, f0
/* 80154E44  EC 03 00 2A */	fadds f0, f3, f0
/* 80154E48  D0 05 00 00 */	stfs f0, 0(r5)
/* 80154E4C  7C 03 03 78 */	mr r3, r0
/* 80154E50  4E 80 00 20 */	blr 
