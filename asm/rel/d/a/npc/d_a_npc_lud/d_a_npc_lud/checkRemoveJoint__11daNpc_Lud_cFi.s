lbl_80A6FD00:
/* 80A6FD00  20 04 00 0A */	subfic r0, r4, 0xa
/* 80A6FD04  7C 00 00 34 */	cntlzw r0, r0
/* 80A6FD08  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A6FD0C  4E 80 00 20 */	blr 
