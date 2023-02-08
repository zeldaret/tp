lbl_8054A7C0:
/* 8054A7C0  A0 03 00 04 */	lhz r0, 4(r3)
/* 8054A7C4  20 00 00 02 */	subfic r0, r0, 2
/* 8054A7C8  7C 00 00 34 */	cntlzw r0, r0
/* 8054A7CC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8054A7D0  4E 80 00 20 */	blr 
