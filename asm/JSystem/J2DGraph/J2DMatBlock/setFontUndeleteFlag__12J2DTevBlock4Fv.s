lbl_802F24EC:
/* 802F24EC  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 802F24F0  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802F24F4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 802F24F8  4E 80 00 20 */	blr 
