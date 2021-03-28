lbl_802B3398:
/* 802B3398  88 03 00 D0 */	lbz r0, 0xd0(r3)
/* 802B339C  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 802B33A0  98 03 00 D0 */	stb r0, 0xd0(r3)
/* 802B33A4  4E 80 00 20 */	blr 
