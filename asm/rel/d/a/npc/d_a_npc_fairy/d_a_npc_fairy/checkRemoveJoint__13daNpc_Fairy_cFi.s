lbl_809B9268:
/* 809B9268  20 04 00 11 */	subfic r0, r4, 0x11
/* 809B926C  7C 00 00 34 */	cntlzw r0, r0
/* 809B9270  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 809B9274  4E 80 00 20 */	blr 
