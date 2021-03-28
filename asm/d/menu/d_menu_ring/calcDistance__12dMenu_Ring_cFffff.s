lbl_801EF174:
/* 801EF174  EC 03 08 28 */	fsubs f0, f3, f1
/* 801EF178  EC 20 00 32 */	fmuls f1, f0, f0
/* 801EF17C  EC 04 10 28 */	fsubs f0, f4, f2
/* 801EF180  EC 00 00 32 */	fmuls f0, f0, f0
/* 801EF184  EC 21 00 2A */	fadds f1, f1, f0
/* 801EF188  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EF18C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801EF190  4C 81 00 20 */	blelr 
/* 801EF194  FC 00 08 34 */	frsqrte f0, f1
/* 801EF198  EC 20 00 72 */	fmuls f1, f0, f1
/* 801EF19C  4E 80 00 20 */	blr 
