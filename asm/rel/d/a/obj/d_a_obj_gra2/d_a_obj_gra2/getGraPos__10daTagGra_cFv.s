lbl_80C0CF10:
/* 80C0CF10  C0 04 04 A8 */	lfs f0, 0x4a8(r4)
/* 80C0CF14  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C0CF18  C0 04 04 AC */	lfs f0, 0x4ac(r4)
/* 80C0CF1C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C0CF20  C0 04 04 B0 */	lfs f0, 0x4b0(r4)
/* 80C0CF24  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C0CF28  4E 80 00 20 */	blr 
