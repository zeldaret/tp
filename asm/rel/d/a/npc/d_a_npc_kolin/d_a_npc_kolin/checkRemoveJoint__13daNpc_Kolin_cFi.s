lbl_8055A4C8:
/* 8055A4C8  20 04 00 08 */	subfic r0, r4, 8
/* 8055A4CC  7C 00 00 34 */	cntlzw r0, r0
/* 8055A4D0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8055A4D4  4E 80 00 20 */	blr 
