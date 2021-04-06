lbl_80D036B8:
/* 80D036B8  C0 43 09 88 */	lfs f2, 0x988(r3)
/* 80D036BC  3C 80 80 D0 */	lis r4, lit_3805@ha /* 0x80D03FE8@ha */
/* 80D036C0  C0 24 3F E8 */	lfs f1, lit_3805@l(r4)  /* 0x80D03FE8@l */
/* 80D036C4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D036C8  EC 01 00 2A */	fadds f0, f1, f0
/* 80D036CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D036D0  7C 00 00 26 */	mfcr r0
/* 80D036D4  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80D036D8  4E 80 00 20 */	blr 
