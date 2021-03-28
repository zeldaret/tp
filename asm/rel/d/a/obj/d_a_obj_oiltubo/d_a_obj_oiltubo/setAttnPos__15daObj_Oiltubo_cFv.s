lbl_80CA7430:
/* 80CA7430  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CA7434  D0 03 05 50 */	stfs f0, 0x550(r3)
/* 80CA7438  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CA743C  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 80CA7440  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CA7444  D0 03 05 58 */	stfs f0, 0x558(r3)
/* 80CA7448  C0 23 05 54 */	lfs f1, 0x554(r3)
/* 80CA744C  3C 80 80 CA */	lis r4, lit_3999@ha
/* 80CA7450  C0 04 79 3C */	lfs f0, lit_3999@l(r4)
/* 80CA7454  EC 01 00 2A */	fadds f0, f1, f0
/* 80CA7458  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 80CA745C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CA7460  D0 03 05 38 */	stfs f0, 0x538(r3)
/* 80CA7464  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CA7468  D0 03 05 3C */	stfs f0, 0x53c(r3)
/* 80CA746C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CA7470  D0 03 05 40 */	stfs f0, 0x540(r3)
/* 80CA7474  4E 80 00 20 */	blr 
