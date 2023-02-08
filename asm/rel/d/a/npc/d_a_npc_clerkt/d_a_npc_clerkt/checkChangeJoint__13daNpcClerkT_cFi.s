lbl_8099D070:
/* 8099D070  20 04 00 11 */	subfic r0, r4, 0x11
/* 8099D074  7C 00 00 34 */	cntlzw r0, r0
/* 8099D078  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8099D07C  4E 80 00 20 */	blr 
