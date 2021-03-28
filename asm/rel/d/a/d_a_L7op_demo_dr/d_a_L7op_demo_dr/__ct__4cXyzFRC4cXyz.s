lbl_805ADEEC:
/* 805ADEEC  C0 04 00 00 */	lfs f0, 0(r4)
/* 805ADEF0  D0 03 00 00 */	stfs f0, 0(r3)
/* 805ADEF4  C0 04 00 04 */	lfs f0, 4(r4)
/* 805ADEF8  D0 03 00 04 */	stfs f0, 4(r3)
/* 805ADEFC  C0 04 00 08 */	lfs f0, 8(r4)
/* 805ADF00  D0 03 00 08 */	stfs f0, 8(r3)
/* 805ADF04  4E 80 00 20 */	blr 
