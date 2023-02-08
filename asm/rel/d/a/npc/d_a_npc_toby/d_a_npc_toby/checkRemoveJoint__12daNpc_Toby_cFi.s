lbl_80B24950:
/* 80B24950  20 04 00 08 */	subfic r0, r4, 8
/* 80B24954  7C 00 00 34 */	cntlzw r0, r0
/* 80B24958  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B2495C  4E 80 00 20 */	blr 
