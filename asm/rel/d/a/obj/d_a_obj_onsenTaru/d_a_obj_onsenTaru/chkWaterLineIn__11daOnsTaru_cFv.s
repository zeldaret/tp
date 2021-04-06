lbl_80CA8C70:
/* 80CA8C70  C0 43 07 70 */	lfs f2, 0x770(r3)
/* 80CA8C74  3C 80 80 CB */	lis r4, lit_3869@ha /* 0x80CA9BC4@ha */
/* 80CA8C78  C0 24 9B C4 */	lfs f1, lit_3869@l(r4)  /* 0x80CA9BC4@l */
/* 80CA8C7C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CA8C80  EC 01 00 2A */	fadds f0, f1, f0
/* 80CA8C84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CA8C88  7C 00 00 26 */	mfcr r0
/* 80CA8C8C  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80CA8C90  4E 80 00 20 */	blr 
