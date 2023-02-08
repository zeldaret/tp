lbl_80B6BC48:
/* 80B6BC48  20 04 00 12 */	subfic r0, r4, 0x12
/* 80B6BC4C  7C 00 00 34 */	cntlzw r0, r0
/* 80B6BC50  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B6BC54  4E 80 00 20 */	blr 
