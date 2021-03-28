lbl_8055A4B8:
/* 8055A4B8  20 04 00 04 */	subfic r0, r4, 4
/* 8055A4BC  7C 00 00 34 */	cntlzw r0, r0
/* 8055A4C0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8055A4C4  4E 80 00 20 */	blr 
