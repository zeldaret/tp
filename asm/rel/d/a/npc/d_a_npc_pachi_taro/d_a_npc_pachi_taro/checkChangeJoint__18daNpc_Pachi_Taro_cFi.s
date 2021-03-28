lbl_80AA1578:
/* 80AA1578  20 04 00 04 */	subfic r0, r4, 4
/* 80AA157C  7C 00 00 34 */	cntlzw r0, r0
/* 80AA1580  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AA1584  4E 80 00 20 */	blr 
