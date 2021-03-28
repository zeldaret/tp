lbl_80D5FDB8:
/* 80D5FDB8  3C 80 80 D6 */	lis r4, lit_3817@ha
/* 80D5FDBC  C0 44 FF A8 */	lfs f2, lit_3817@l(r4)
/* 80D5FDC0  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D5FDC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D5FDC8  D0 03 05 6C */	stfs f0, 0x56c(r3)
/* 80D5FDCC  3C 80 80 D6 */	lis r4, lit_3818@ha
/* 80D5FDD0  C0 24 FF AC */	lfs f1, lit_3818@l(r4)
/* 80D5FDD4  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D5FDD8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D5FDDC  D0 03 05 70 */	stfs f0, 0x570(r3)
/* 80D5FDE0  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D5FDE4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D5FDE8  D0 03 05 74 */	stfs f0, 0x574(r3)
/* 80D5FDEC  4E 80 00 20 */	blr 
