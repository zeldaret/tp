lbl_8003A20C:
/* 8003A20C  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 8003A210  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 8003A214  4E 80 00 20 */	blr 
