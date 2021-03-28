lbl_802F2A20:
/* 802F2A20  88 03 00 5C */	lbz r0, 0x5c(r3)
/* 802F2A24  7C 00 20 38 */	and r0, r0, r4
/* 802F2A28  98 03 00 5C */	stb r0, 0x5c(r3)
/* 802F2A2C  4E 80 00 20 */	blr 
