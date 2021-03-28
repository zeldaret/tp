lbl_80CF2FDC:
/* 80CF2FDC  C0 04 05 C8 */	lfs f0, 0x5c8(r4)
/* 80CF2FE0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80CF2FE4  C0 04 05 CC */	lfs f0, 0x5cc(r4)
/* 80CF2FE8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CF2FEC  C0 04 05 D0 */	lfs f0, 0x5d0(r4)
/* 80CF2FF0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CF2FF4  4E 80 00 20 */	blr 
