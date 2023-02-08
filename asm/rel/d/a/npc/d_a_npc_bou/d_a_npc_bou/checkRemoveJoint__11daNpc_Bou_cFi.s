lbl_809727E4:
/* 809727E4  20 04 00 08 */	subfic r0, r4, 8
/* 809727E8  7C 00 00 34 */	cntlzw r0, r0
/* 809727EC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 809727F0  4E 80 00 20 */	blr 
