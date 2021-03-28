lbl_8026EE68:
/* 8026EE68  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026EE6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8026EE70  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026EE74  C0 03 00 04 */	lfs f0, 4(r3)
/* 8026EE78  EC 00 08 28 */	fsubs f0, f0, f1
/* 8026EE7C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8026EE80  C0 03 00 08 */	lfs f0, 8(r3)
/* 8026EE84  EC 00 08 28 */	fsubs f0, f0, f1
/* 8026EE88  D0 03 00 08 */	stfs f0, 8(r3)
/* 8026EE8C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8026EE90  EC 00 08 2A */	fadds f0, f0, f1
/* 8026EE94  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8026EE98  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8026EE9C  EC 00 08 2A */	fadds f0, f0, f1
/* 8026EEA0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8026EEA4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8026EEA8  EC 00 08 2A */	fadds f0, f0, f1
/* 8026EEAC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8026EEB0  4E 80 00 20 */	blr 
