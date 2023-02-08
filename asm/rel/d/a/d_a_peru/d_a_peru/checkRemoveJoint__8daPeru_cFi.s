lbl_80D4BEF4:
/* 80D4BEF4  20 04 00 05 */	subfic r0, r4, 5
/* 80D4BEF8  7C 00 00 34 */	cntlzw r0, r0
/* 80D4BEFC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80D4BF00  4E 80 00 20 */	blr 
