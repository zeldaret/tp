lbl_806C74B8:
/* 806C74B8  C0 04 00 00 */	lfs f0, 0(r4)
/* 806C74BC  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 806C74C0  C0 04 00 04 */	lfs f0, 4(r4)
/* 806C74C4  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 806C74C8  C0 04 00 08 */	lfs f0, 8(r4)
/* 806C74CC  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 806C74D0  4E 80 00 20 */	blr 
