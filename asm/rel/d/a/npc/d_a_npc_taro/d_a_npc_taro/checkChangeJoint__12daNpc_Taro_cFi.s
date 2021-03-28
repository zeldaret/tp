lbl_805715CC:
/* 805715CC  20 04 00 04 */	subfic r0, r4, 4
/* 805715D0  7C 00 00 34 */	cntlzw r0, r0
/* 805715D4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 805715D8  4E 80 00 20 */	blr 
