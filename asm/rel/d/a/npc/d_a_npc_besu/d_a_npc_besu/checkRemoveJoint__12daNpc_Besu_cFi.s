lbl_8053E6D8:
/* 8053E6D8  20 04 00 06 */	subfic r0, r4, 6
/* 8053E6DC  7C 00 00 34 */	cntlzw r0, r0
/* 8053E6E0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8053E6E4  4E 80 00 20 */	blr 
