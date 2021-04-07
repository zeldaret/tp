lbl_80CAE744:
/* 80CAE744  C0 43 04 B0 */	lfs f2, 0x4b0(r3)
/* 80CAE748  3C A0 80 CB */	lis r5, lit_3926@ha /* 0x80CAF030@ha */
/* 80CAE74C  C0 25 F0 30 */	lfs f1, lit_3926@l(r5)  /* 0x80CAF030@l */
/* 80CAE750  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80CAE754  EC 21 00 2A */	fadds f1, f1, f0
/* 80CAE758  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 80CAE75C  D0 04 00 00 */	stfs f0, 0(r4)
/* 80CAE760  D0 24 00 04 */	stfs f1, 4(r4)
/* 80CAE764  D0 44 00 08 */	stfs f2, 8(r4)
/* 80CAE768  4E 80 00 20 */	blr 
