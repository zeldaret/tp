lbl_802A2280:
/* 802A2280  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 802A2284  C0 44 00 00 */	lfs f2, 0(r4)
/* 802A2288  C0 03 00 00 */	lfs f0, 0(r3)
/* 802A228C  EC 02 00 32 */	fmuls f0, f2, f0
/* 802A2290  EC 03 00 32 */	fmuls f0, f3, f0
/* 802A2294  EC 01 00 32 */	fmuls f0, f1, f0
/* 802A2298  D0 05 00 00 */	stfs f0, 0(r5)
/* 802A229C  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 802A22A0  C0 24 00 04 */	lfs f1, 4(r4)
/* 802A22A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 802A22A8  EC 01 00 2A */	fadds f0, f1, f0
/* 802A22AC  EC 02 00 2A */	fadds f0, f2, f0
/* 802A22B0  D0 05 00 04 */	stfs f0, 4(r5)
/* 802A22B4  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 802A22B8  C0 24 00 08 */	lfs f1, 8(r4)
/* 802A22BC  C0 03 00 08 */	lfs f0, 8(r3)
/* 802A22C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802A22C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 802A22C8  D0 05 00 08 */	stfs f0, 8(r5)
/* 802A22CC  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 802A22D0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802A22D4  EC 21 00 2A */	fadds f1, f1, f0
/* 802A22D8  C0 02 BD B8 */	lfs f0, lit_659(r2)
/* 802A22DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 802A22E0  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 802A22E4  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802A22E8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 802A22EC  EC 01 00 2A */	fadds f0, f1, f0
/* 802A22F0  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 802A22F4  4E 80 00 20 */	blr 
