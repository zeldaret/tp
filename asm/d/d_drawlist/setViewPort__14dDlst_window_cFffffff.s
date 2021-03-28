lbl_80051AC0:
/* 80051AC0  D0 23 00 00 */	stfs f1, 0(r3)
/* 80051AC4  D0 43 00 04 */	stfs f2, 4(r3)
/* 80051AC8  D0 63 00 08 */	stfs f3, 8(r3)
/* 80051ACC  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 80051AD0  D0 A3 00 10 */	stfs f5, 0x10(r3)
/* 80051AD4  D0 C3 00 14 */	stfs f6, 0x14(r3)
/* 80051AD8  4E 80 00 20 */	blr 
