lbl_805F40D0:
/* 805F40D0  C0 04 00 00 */	lfs f0, 0(r4)
/* 805F40D4  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 805F40D8  C0 04 00 04 */	lfs f0, 4(r4)
/* 805F40DC  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 805F40E0  C0 04 00 08 */	lfs f0, 8(r4)
/* 805F40E4  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 805F40E8  4E 80 00 20 */	blr 
