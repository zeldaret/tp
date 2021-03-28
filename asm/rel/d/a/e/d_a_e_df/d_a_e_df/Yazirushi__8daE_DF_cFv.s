lbl_806A949C:
/* 806A949C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806A94A0  D0 03 05 3C */	stfs f0, 0x53c(r3)
/* 806A94A4  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 806A94A8  3C 80 80 6B */	lis r4, lit_4627@ha
/* 806A94AC  C0 24 9F F4 */	lfs f1, lit_4627@l(r4)
/* 806A94B0  EC 00 08 2A */	fadds f0, f0, f1
/* 806A94B4  D0 03 05 3C */	stfs f0, 0x53c(r3)
/* 806A94B8  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 806A94BC  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 806A94C0  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 806A94C4  EC 00 08 2A */	fadds f0, f0, f1
/* 806A94C8  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 806A94CC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806A94D0  D0 03 05 50 */	stfs f0, 0x550(r3)
/* 806A94D4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806A94D8  D0 03 05 58 */	stfs f0, 0x558(r3)
/* 806A94DC  4E 80 00 20 */	blr 
