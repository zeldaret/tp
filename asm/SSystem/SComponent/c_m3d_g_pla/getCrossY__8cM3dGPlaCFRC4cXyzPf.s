lbl_8026F57C:
/* 8026F57C  C0 63 00 04 */	lfs f3, 4(r3)
/* 8026F580  FC 00 1A 10 */	fabs f0, f3
/* 8026F584  FC 20 00 18 */	frsp f1, f0
/* 8026F588  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026F58C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026F590  40 80 00 0C */	bge lbl_8026F59C
/* 8026F594  38 60 00 00 */	li r3, 0
/* 8026F598  4E 80 00 20 */	blr 
lbl_8026F59C:
/* 8026F59C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026F5A0  FC 20 00 50 */	fneg f1, f0
/* 8026F5A4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F5A8  EC 41 00 32 */	fmuls f2, f1, f0
/* 8026F5AC  C0 23 00 08 */	lfs f1, 8(r3)
/* 8026F5B0  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F5B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8026F5B8  EC 22 00 28 */	fsubs f1, f2, f0
/* 8026F5BC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8026F5C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8026F5C4  EC 00 18 24 */	fdivs f0, f0, f3
/* 8026F5C8  D0 05 00 00 */	stfs f0, 0(r5)
/* 8026F5CC  38 60 00 01 */	li r3, 1
/* 8026F5D0  4E 80 00 20 */	blr 
