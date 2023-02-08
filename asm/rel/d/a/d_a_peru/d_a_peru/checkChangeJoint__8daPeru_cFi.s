lbl_80D4BEE4:
/* 80D4BEE4  20 04 00 04 */	subfic r0, r4, 4
/* 80D4BEE8  7C 00 00 34 */	cntlzw r0, r0
/* 80D4BEEC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80D4BEF0  4E 80 00 20 */	blr 
