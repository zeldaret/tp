lbl_8004FAD4:
/* 8004FAD4  A8 05 00 80 */	lha r0, 0x80(r5)
/* 8004FAD8  2C 00 00 00 */	cmpwi r0, 0
/* 8004FADC  4C 81 00 20 */	blelr 
/* 8004FAE0  80 64 00 C0 */	lwz r3, 0xc0(r4)
/* 8004FAE4  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 8004FAE8  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 8004FAEC  C0 65 00 20 */	lfs f3, 0x20(r5)
/* 8004FAF0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8004FAF4  EC 21 00 2A */	fadds f1, f1, f0
/* 8004FAF8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8004FAFC  EC 42 00 2A */	fadds f2, f2, f0
/* 8004FB00  C0 03 00 08 */	lfs f0, 8(r3)
/* 8004FB04  EC 63 00 2A */	fadds f3, f3, f0
/* 8004FB08  D0 25 00 18 */	stfs f1, 0x18(r5)
/* 8004FB0C  D0 45 00 1C */	stfs f2, 0x1c(r5)
/* 8004FB10  D0 65 00 20 */	stfs f3, 0x20(r5)
/* 8004FB14  4E 80 00 20 */	blr 
