lbl_801C0F54:
/* 801C0F54  C0 22 A6 98 */	lfs f1, lit_3946(r2)
/* 801C0F58  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 801C0F5C  EC 41 00 24 */	fdivs f2, f1, f0
/* 801C0F60  C0 23 00 9C */	lfs f1, 0x9c(r3)
/* 801C0F64  C0 0D 88 F8 */	lfs f0, mAllCenterX__8dMpath_c(r13)
/* 801C0F68  EC 01 00 28 */	fsubs f0, f1, f0
/* 801C0F6C  EC 22 00 32 */	fmuls f1, f2, f0
/* 801C0F70  4E 80 00 20 */	blr 
