lbl_802F24DC:
/* 802F24DC  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 802F24E0  7C 00 20 38 */	and r0, r0, r4
/* 802F24E4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 802F24E8  4E 80 00 20 */	blr 
