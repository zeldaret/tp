lbl_8026F5D4:
/* 8026F5D4  C0 63 00 04 */	lfs f3, 4(r3)
/* 8026F5D8  FC 00 1A 10 */	fabs f0, f3
/* 8026F5DC  FC 20 00 18 */	frsp f1, f0
/* 8026F5E0  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026F5E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026F5E8  40 80 00 0C */	bge lbl_8026F5F4
/* 8026F5EC  38 60 00 00 */	li r3, 0
/* 8026F5F0  4E 80 00 20 */	blr 
lbl_8026F5F4:
/* 8026F5F4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026F5F8  FC 20 00 50 */	fneg f1, f0
/* 8026F5FC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F600  EC 41 00 32 */	fmuls f2, f1, f0
/* 8026F604  C0 23 00 08 */	lfs f1, 8(r3)
/* 8026F608  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F60C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8026F610  EC 02 00 28 */	fsubs f0, f2, f0
/* 8026F614  EC 00 18 24 */	fdivs f0, f0, f3
/* 8026F618  D0 05 00 00 */	stfs f0, 0(r5)
/* 8026F61C  38 60 00 01 */	li r3, 1
/* 8026F620  4E 80 00 20 */	blr 
