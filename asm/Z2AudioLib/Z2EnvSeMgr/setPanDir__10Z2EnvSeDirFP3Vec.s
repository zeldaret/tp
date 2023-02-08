lbl_802C5D70:
/* 802C5D70  C0 22 C3 64 */	lfs f1, lit_3585(r2)
/* 802C5D74  C0 04 00 00 */	lfs f0, 0(r4)
/* 802C5D78  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C5D7C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802C5D80  C0 04 00 04 */	lfs f0, 4(r4)
/* 802C5D84  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C5D88  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802C5D8C  C0 04 00 08 */	lfs f0, 8(r4)
/* 802C5D90  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C5D94  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802C5D98  4E 80 00 20 */	blr 
