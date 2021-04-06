lbl_80CA8C4C:
/* 80CA8C4C  C0 43 07 70 */	lfs f2, 0x770(r3)
/* 80CA8C50  3C 80 80 CB */	lis r4, lit_3863@ha /* 0x80CA9BC0@ha */
/* 80CA8C54  C0 24 9B C0 */	lfs f1, lit_3863@l(r4)  /* 0x80CA9BC0@l */
/* 80CA8C58  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CA8C5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CA8C60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CA8C64  7C 00 00 26 */	mfcr r0
/* 80CA8C68  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80CA8C6C  4E 80 00 20 */	blr 
