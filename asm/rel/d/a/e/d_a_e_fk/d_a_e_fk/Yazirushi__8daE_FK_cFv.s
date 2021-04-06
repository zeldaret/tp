lbl_806B9AD8:
/* 806B9AD8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806B9ADC  D0 03 05 38 */	stfs f0, 0x538(r3)
/* 806B9AE0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806B9AE4  D0 03 05 3C */	stfs f0, 0x53c(r3)
/* 806B9AE8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806B9AEC  D0 03 05 40 */	stfs f0, 0x540(r3)
/* 806B9AF0  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 806B9AF4  3C 80 80 6C */	lis r4, lit_4129@ha /* 0x806BB7AC@ha */
/* 806B9AF8  C0 24 B7 AC */	lfs f1, lit_4129@l(r4)  /* 0x806BB7AC@l */
/* 806B9AFC  EC 00 08 2A */	fadds f0, f0, f1
/* 806B9B00  D0 03 05 3C */	stfs f0, 0x53c(r3)
/* 806B9B04  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 806B9B08  D0 03 05 50 */	stfs f0, 0x550(r3)
/* 806B9B0C  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 806B9B10  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 806B9B14  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 806B9B18  D0 03 05 58 */	stfs f0, 0x558(r3)
/* 806B9B1C  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 806B9B20  EC 00 08 2A */	fadds f0, f0, f1
/* 806B9B24  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 806B9B28  4E 80 00 20 */	blr 
