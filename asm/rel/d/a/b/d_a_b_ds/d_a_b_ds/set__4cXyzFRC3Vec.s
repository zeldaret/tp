lbl_805DC9F0:
/* 805DC9F0  C0 04 00 00 */	lfs f0, 0(r4)
/* 805DC9F4  D0 03 00 00 */	stfs f0, 0(r3)
/* 805DC9F8  C0 04 00 04 */	lfs f0, 4(r4)
/* 805DC9FC  D0 03 00 04 */	stfs f0, 4(r3)
/* 805DCA00  C0 04 00 08 */	lfs f0, 8(r4)
/* 805DCA04  D0 03 00 08 */	stfs f0, 8(r3)
/* 805DCA08  4E 80 00 20 */	blr 
