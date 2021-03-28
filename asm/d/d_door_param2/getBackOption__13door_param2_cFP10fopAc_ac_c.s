lbl_8003A1AC:
/* 8003A1AC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8003A1B0  54 03 B7 7E */	rlwinm r3, r0, 0x16, 0x1d, 0x1f
/* 8003A1B4  4E 80 00 20 */	blr 
