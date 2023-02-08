lbl_809D8FFC:
/* 809D8FFC  20 04 00 07 */	subfic r0, r4, 7
/* 809D9000  7C 00 00 34 */	cntlzw r0, r0
/* 809D9004  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 809D9008  4E 80 00 20 */	blr 
