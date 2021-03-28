lbl_80A73934:
/* 80A73934  20 04 00 04 */	subfic r0, r4, 4
/* 80A73938  7C 00 00 34 */	cntlzw r0, r0
/* 80A7393C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A73940  4E 80 00 20 */	blr 
