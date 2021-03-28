lbl_8026F76C:
/* 8026F76C  C0 83 00 00 */	lfs f4, 0(r3)
/* 8026F770  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 8026F774  EC 04 18 28 */	fsubs f0, f4, f3
/* 8026F778  D0 04 00 00 */	stfs f0, 0(r4)
/* 8026F77C  C0 43 00 04 */	lfs f2, 4(r3)
/* 8026F780  EC 02 18 28 */	fsubs f0, f2, f3
/* 8026F784  D0 04 00 04 */	stfs f0, 4(r4)
/* 8026F788  C0 23 00 08 */	lfs f1, 8(r3)
/* 8026F78C  EC 01 18 28 */	fsubs f0, f1, f3
/* 8026F790  D0 04 00 08 */	stfs f0, 8(r4)
/* 8026F794  EC 04 18 2A */	fadds f0, f4, f3
/* 8026F798  D0 05 00 00 */	stfs f0, 0(r5)
/* 8026F79C  EC 02 18 2A */	fadds f0, f2, f3
/* 8026F7A0  D0 05 00 04 */	stfs f0, 4(r5)
/* 8026F7A4  EC 01 18 2A */	fadds f0, f1, f3
/* 8026F7A8  D0 05 00 08 */	stfs f0, 8(r5)
/* 8026F7AC  4E 80 00 20 */	blr 
