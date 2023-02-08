lbl_8014F81C:
/* 8014F81C  38 00 00 00 */	li r0, 0
/* 8014F820  EC E5 18 28 */	fsubs f7, f5, f3
/* 8014F824  ED 06 20 28 */	fsubs f8, f6, f4
/* 8014F828  EC A7 01 F2 */	fmuls f5, f7, f7
/* 8014F82C  EC 08 02 32 */	fmuls f0, f8, f8
/* 8014F830  ED 25 00 2A */	fadds f9, f5, f0
/* 8014F834  C0 C2 99 D8 */	lfs f6, lit_4116(r2)
/* 8014F838  FC 06 48 00 */	fcmpu cr0, f6, f9
/* 8014F83C  40 82 00 10 */	bne lbl_8014F84C
/* 8014F840  D0 C5 00 00 */	stfs f6, 0(r5)
/* 8014F844  38 60 00 00 */	li r3, 0
/* 8014F848  4E 80 00 20 */	blr 
lbl_8014F84C:
/* 8014F84C  EC 01 18 28 */	fsubs f0, f1, f3
/* 8014F850  EC A7 00 32 */	fmuls f5, f7, f0
/* 8014F854  EC 02 20 28 */	fsubs f0, f2, f4
/* 8014F858  EC 08 00 32 */	fmuls f0, f8, f0
/* 8014F85C  EC 05 00 2A */	fadds f0, f5, f0
/* 8014F860  EC A0 48 24 */	fdivs f5, f0, f9
/* 8014F864  FC 06 28 40 */	fcmpo cr0, f6, f5
/* 8014F868  4C 40 13 82 */	cror 2, 0, 2
/* 8014F86C  40 82 00 18 */	bne lbl_8014F884
/* 8014F870  C0 02 99 DC */	lfs f0, lit_4140(r2)
/* 8014F874  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8014F878  4C 40 13 82 */	cror 2, 0, 2
/* 8014F87C  40 82 00 08 */	bne lbl_8014F884
/* 8014F880  38 00 00 01 */	li r0, 1
lbl_8014F884:
/* 8014F884  EC 07 01 72 */	fmuls f0, f7, f5
/* 8014F888  EC 03 00 2A */	fadds f0, f3, f0
/* 8014F88C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8014F890  EC 08 01 72 */	fmuls f0, f8, f5
/* 8014F894  EC 04 00 2A */	fadds f0, f4, f0
/* 8014F898  D0 04 00 00 */	stfs f0, 0(r4)
/* 8014F89C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8014F8A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8014F8A4  EC 20 00 32 */	fmuls f1, f0, f0
/* 8014F8A8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8014F8AC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8014F8B0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8014F8B4  EC 01 00 2A */	fadds f0, f1, f0
/* 8014F8B8  D0 05 00 00 */	stfs f0, 0(r5)
/* 8014F8BC  7C 03 03 78 */	mr r3, r0
/* 8014F8C0  4E 80 00 20 */	blr 
