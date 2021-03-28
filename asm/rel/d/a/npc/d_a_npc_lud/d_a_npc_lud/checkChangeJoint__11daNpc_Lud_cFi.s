lbl_80A6FCF0:
/* 80A6FCF0  20 04 00 04 */	subfic r0, r4, 4
/* 80A6FCF4  7C 00 00 34 */	cntlzw r0, r0
/* 80A6FCF8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A6FCFC  4E 80 00 20 */	blr 
