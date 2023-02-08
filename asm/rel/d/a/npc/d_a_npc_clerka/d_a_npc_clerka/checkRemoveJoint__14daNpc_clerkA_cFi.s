lbl_809956C4:
/* 809956C4  20 04 00 08 */	subfic r0, r4, 8
/* 809956C8  7C 00 00 34 */	cntlzw r0, r0
/* 809956CC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 809956D0  4E 80 00 20 */	blr 
