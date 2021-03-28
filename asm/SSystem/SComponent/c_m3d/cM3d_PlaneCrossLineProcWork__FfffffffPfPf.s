lbl_8026E6C4:
/* 8026E6C4  EC 42 01 F2 */	fmuls f2, f2, f7
/* 8026E6C8  EC 04 01 B2 */	fmuls f0, f4, f6
/* 8026E6CC  EC 02 00 28 */	fsubs f0, f2, f0
/* 8026E6D0  EC 00 28 24 */	fdivs f0, f0, f5
/* 8026E6D4  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026E6D8  EC 43 01 B2 */	fmuls f2, f3, f6
/* 8026E6DC  EC 01 01 F2 */	fmuls f0, f1, f7
/* 8026E6E0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8026E6E4  EC 00 28 24 */	fdivs f0, f0, f5
/* 8026E6E8  D0 04 00 00 */	stfs f0, 0(r4)
/* 8026E6EC  4E 80 00 20 */	blr 
