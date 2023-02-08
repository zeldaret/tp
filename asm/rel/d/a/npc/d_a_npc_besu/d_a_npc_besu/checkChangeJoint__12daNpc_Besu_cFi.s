lbl_8053E6C8:
/* 8053E6C8  20 04 00 04 */	subfic r0, r4, 4
/* 8053E6CC  7C 00 00 34 */	cntlzw r0, r0
/* 8053E6D0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8053E6D4  4E 80 00 20 */	blr 
