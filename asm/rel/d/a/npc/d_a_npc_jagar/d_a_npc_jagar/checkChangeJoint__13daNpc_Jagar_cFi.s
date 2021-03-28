lbl_80A1A294:
/* 80A1A294  20 04 00 04 */	subfic r0, r4, 4
/* 80A1A298  7C 00 00 34 */	cntlzw r0, r0
/* 80A1A29C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A1A2A0  4E 80 00 20 */	blr 
