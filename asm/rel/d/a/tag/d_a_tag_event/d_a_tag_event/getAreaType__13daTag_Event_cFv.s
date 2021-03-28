lbl_8048ADA4:
/* 8048ADA4  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 8048ADA8  54 03 04 20 */	rlwinm r3, r0, 0, 0x10, 0x10
/* 8048ADAC  4E 80 00 20 */	blr 
