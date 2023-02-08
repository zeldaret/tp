lbl_80182D48:
/* 80182D48  88 03 16 B4 */	lbz r0, 0x16b4(r3)
/* 80182D4C  20 00 00 04 */	subfic r0, r0, 4
/* 80182D50  7C 00 00 34 */	cntlzw r0, r0
/* 80182D54  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80182D58  4E 80 00 20 */	blr 
