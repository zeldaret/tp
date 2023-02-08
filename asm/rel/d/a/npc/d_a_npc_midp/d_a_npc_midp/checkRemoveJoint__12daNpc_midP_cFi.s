lbl_80A73944:
/* 80A73944  20 04 00 08 */	subfic r0, r4, 8
/* 80A73948  7C 00 00 34 */	cntlzw r0, r0
/* 80A7394C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A73950  4E 80 00 20 */	blr 
