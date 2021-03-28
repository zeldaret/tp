lbl_802C48D8:
/* 802C48D8  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802C48DC  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 802C48E0  98 03 00 CB */	stb r0, 0xcb(r3)
/* 802C48E4  4E 80 00 20 */	blr 
