lbl_80AA1588:
/* 80AA1588  20 04 00 07 */	subfic r0, r4, 7
/* 80AA158C  7C 00 00 34 */	cntlzw r0, r0
/* 80AA1590  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AA1594  4E 80 00 20 */	blr 
