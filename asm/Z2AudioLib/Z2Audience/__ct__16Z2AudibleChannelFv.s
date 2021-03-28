lbl_802BBE74:
/* 802BBE74  C0 02 C0 A4 */	lfs f0, lit_894(r2)
/* 802BBE78  D0 03 00 00 */	stfs f0, 0(r3)
/* 802BBE7C  D0 03 00 08 */	stfs f0, 8(r3)
/* 802BBE80  C0 22 C0 A0 */	lfs f1, lit_848(r2)
/* 802BBE84  D0 23 00 04 */	stfs f1, 4(r3)
/* 802BBE88  C0 02 C0 A8 */	lfs f0, lit_895(r2)
/* 802BBE8C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802BBE90  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 802BBE94  4E 80 00 20 */	blr 
