lbl_802BCDE8:
/* 802BCDE8  54 80 10 3A */	slwi r0, r4, 2
/* 802BCDEC  C0 23 00 08 */	lfs f1, 8(r3)
/* 802BCDF0  7C 83 02 14 */	add r4, r3, r0
/* 802BCDF4  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 802BCDF8  EC 41 00 28 */	fsubs f2, f1, f0
/* 802BCDFC  C0 23 00 04 */	lfs f1, 4(r3)
/* 802BCE00  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BCE04  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BCE08  EC 02 00 24 */	fdivs f0, f2, f0
/* 802BCE0C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 802BCE10  4E 80 00 20 */	blr 
