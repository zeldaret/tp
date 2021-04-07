lbl_800F9FDC:
/* 800F9FDC  3C 80 80 39 */	lis r4, m__22daAlinkHIO_wallMove_c0@ha /* 0x8038E1E0@ha */
/* 800F9FE0  C4 44 E1 E0 */	lfsu f2, m__22daAlinkHIO_wallMove_c0@l(r4)  /* 0x8038E1E0@l */
/* 800F9FE4  C0 23 33 A8 */	lfs f1, 0x33a8(r3)
/* 800F9FE8  C0 04 00 04 */	lfs f0, 4(r4)
/* 800F9FEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 800F9FF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F9FF4  EC 22 00 2A */	fadds f1, f2, f0
/* 800F9FF8  4E 80 00 20 */	blr 
