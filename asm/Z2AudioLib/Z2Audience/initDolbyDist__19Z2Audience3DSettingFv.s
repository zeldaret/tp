lbl_802BC6A4:
/* 802BC6A4  88 03 01 25 */	lbz r0, 0x125(r3)
/* 802BC6A8  28 00 00 00 */	cmplwi r0, 0
/* 802BC6AC  4C 82 00 20 */	bnelr 
/* 802BC6B0  C0 0D 82 64 */	lfs f0, DOLBY_FLONT_DISTANCE_MAX__7Z2Param(r13)
/* 802BC6B4  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 802BC6B8  C0 0D 82 68 */	lfs f0, DOLBY_BEHIND_DISTANCE_MAX__7Z2Param(r13)
/* 802BC6BC  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802BC6C0  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 802BC6C4  FC 20 00 50 */	fneg f1, f0
/* 802BC6C8  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 802BC6CC  EC 01 00 24 */	fdivs f0, f1, f0
/* 802BC6D0  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 802BC6D4  C0 22 C0 A4 */	lfs f1, lit_894(r2)
/* 802BC6D8  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 802BC6DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 802BC6E0  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 802BC6E4  EC 01 00 24 */	fdivs f0, f1, f0
/* 802BC6E8  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 802BC6EC  38 00 00 01 */	li r0, 1
/* 802BC6F0  98 03 01 25 */	stb r0, 0x125(r3)
/* 802BC6F4  4E 80 00 20 */	blr 
