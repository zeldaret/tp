lbl_80BEE0B8:
/* 80BEE0B8  C0 04 05 70 */	lfs f0, 0x570(r4)
/* 80BEE0BC  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BEE0C0  C0 04 05 74 */	lfs f0, 0x574(r4)
/* 80BEE0C4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BEE0C8  C0 04 05 78 */	lfs f0, 0x578(r4)
/* 80BEE0CC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BEE0D0  4E 80 00 20 */	blr 
