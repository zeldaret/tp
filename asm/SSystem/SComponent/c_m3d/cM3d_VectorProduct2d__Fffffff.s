lbl_80268894:
/* 80268894  EC 63 08 28 */	fsubs f3, f3, f1
/* 80268898  EC 06 10 28 */	fsubs f0, f6, f2
/* 8026889C  EC 63 00 32 */	fmuls f3, f3, f0
/* 802688A0  EC 44 10 28 */	fsubs f2, f4, f2
/* 802688A4  EC 05 08 28 */	fsubs f0, f5, f1
/* 802688A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 802688AC  EC 23 00 28 */	fsubs f1, f3, f0
/* 802688B0  4E 80 00 20 */	blr 
