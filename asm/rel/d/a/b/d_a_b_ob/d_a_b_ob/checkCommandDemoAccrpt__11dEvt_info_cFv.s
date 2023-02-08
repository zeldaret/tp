lbl_8061AA10:
/* 8061AA10  A0 03 00 04 */	lhz r0, 4(r3)
/* 8061AA14  20 00 00 02 */	subfic r0, r0, 2
/* 8061AA18  7C 00 00 34 */	cntlzw r0, r0
/* 8061AA1C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8061AA20  4E 80 00 20 */	blr 
