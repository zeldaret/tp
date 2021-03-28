lbl_802B43D0:
/* 802B43D0  88 03 00 D0 */	lbz r0, 0xd0(r3)
/* 802B43D4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 802B43D8  98 03 00 D0 */	stb r0, 0xd0(r3)
/* 802B43DC  4E 80 00 20 */	blr 
