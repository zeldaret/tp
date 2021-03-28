lbl_80A065D4:
/* 80A065D4  20 04 00 09 */	subfic r0, r4, 9
/* 80A065D8  7C 00 00 34 */	cntlzw r0, r0
/* 80A065DC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A065E0  4E 80 00 20 */	blr 
