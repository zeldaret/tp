lbl_8029ABC0:
/* 8029ABC0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8029ABC4  C0 62 BC 88 */	lfs f3, lit_546(r2)
/* 8029ABC8  EC 40 18 28 */	fsubs f2, f0, f3
/* 8029ABCC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8029ABD0  EC 00 18 28 */	fsubs f0, f0, f3
/* 8029ABD4  EC 23 00 2A */	fadds f1, f3, f0
/* 8029ABD8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8029ABDC  EC 00 18 28 */	fsubs f0, f0, f3
/* 8029ABE0  EC 01 00 2A */	fadds f0, f1, f0
/* 8029ABE4  EC 22 00 2A */	fadds f1, f2, f0
/* 8029ABE8  4E 80 00 20 */	blr 
