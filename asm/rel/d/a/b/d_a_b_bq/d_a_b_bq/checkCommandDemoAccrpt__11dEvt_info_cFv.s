lbl_805BA1D4:
/* 805BA1D4  A0 03 00 04 */	lhz r0, 4(r3)
/* 805BA1D8  20 00 00 02 */	subfic r0, r0, 2
/* 805BA1DC  7C 00 00 34 */	cntlzw r0, r0
/* 805BA1E0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 805BA1E4  4E 80 00 20 */	blr 
