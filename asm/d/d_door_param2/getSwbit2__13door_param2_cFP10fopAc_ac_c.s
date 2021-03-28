lbl_8003A1DC:
/* 8003A1DC  A8 03 04 B8 */	lha r0, 0x4b8(r3)
/* 8003A1E0  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 8003A1E4  4E 80 00 20 */	blr 
