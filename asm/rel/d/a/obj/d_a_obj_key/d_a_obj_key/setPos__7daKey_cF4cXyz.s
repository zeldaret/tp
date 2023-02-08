lbl_80C40FBC:
/* 80C40FBC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80C40FC0  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80C40FC4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80C40FC8  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80C40FCC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C40FD0  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80C40FD4  4E 80 00 20 */	blr 
