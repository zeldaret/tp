lbl_8007E4A4:
/* 8007E4A4  88 03 00 BC */	lbz r0, 0xbc(r3)
/* 8007E4A8  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8007E4AC  98 03 00 BC */	stb r0, 0xbc(r3)
/* 8007E4B0  4E 80 00 20 */	blr 
