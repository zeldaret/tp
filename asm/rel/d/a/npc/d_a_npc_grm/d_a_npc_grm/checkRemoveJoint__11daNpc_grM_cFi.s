lbl_809D5FC8:
/* 809D5FC8  20 04 00 07 */	subfic r0, r4, 7
/* 809D5FCC  7C 00 00 34 */	cntlzw r0, r0
/* 809D5FD0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 809D5FD4  4E 80 00 20 */	blr 
