lbl_80B4CD28:
/* 80B4CD28  20 04 00 06 */	subfic r0, r4, 6
/* 80B4CD2C  7C 00 00 34 */	cntlzw r0, r0
/* 80B4CD30  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B4CD34  4E 80 00 20 */	blr 
