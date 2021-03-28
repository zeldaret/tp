lbl_80A969F0:
/* 80A969F0  20 04 00 06 */	subfic r0, r4, 6
/* 80A969F4  7C 00 00 34 */	cntlzw r0, r0
/* 80A969F8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A969FC  4E 80 00 20 */	blr 
