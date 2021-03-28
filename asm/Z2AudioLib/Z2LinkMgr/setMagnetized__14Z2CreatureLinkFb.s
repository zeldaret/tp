lbl_802C3AEC:
/* 802C3AEC  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802C3AF0  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 802C3AF4  98 03 00 CB */	stb r0, 0xcb(r3)
/* 802C3AF8  4E 80 00 20 */	blr 
