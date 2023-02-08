lbl_809D5FB8:
/* 809D5FB8  20 04 00 04 */	subfic r0, r4, 4
/* 809D5FBC  7C 00 00 34 */	cntlzw r0, r0
/* 809D5FC0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 809D5FC4  4E 80 00 20 */	blr 
