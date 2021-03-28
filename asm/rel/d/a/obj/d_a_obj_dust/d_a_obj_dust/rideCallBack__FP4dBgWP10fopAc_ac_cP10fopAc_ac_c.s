lbl_80BE2790:
/* 80BE2790  C0 25 04 D4 */	lfs f1, 0x4d4(r5)
/* 80BE2794  C0 05 04 C0 */	lfs f0, 0x4c0(r5)
/* 80BE2798  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BE279C  FC 00 0A 10 */	fabs f0, f1
/* 80BE27A0  FC 40 00 18 */	frsp f2, f0
/* 80BE27A4  3C 60 80 BE */	lis r3, lit_3817@ha
/* 80BE27A8  C0 03 2F E8 */	lfs f0, lit_3817@l(r3)
/* 80BE27AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BE27B0  4C 81 00 20 */	blelr 
/* 80BE27B4  D0 24 05 A8 */	stfs f1, 0x5a8(r4)
/* 80BE27B8  4E 80 00 20 */	blr 
