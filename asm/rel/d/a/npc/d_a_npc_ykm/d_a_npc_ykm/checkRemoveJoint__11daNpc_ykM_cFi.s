lbl_80B5D6B8:
/* 80B5D6B8  20 04 00 09 */	subfic r0, r4, 9
/* 80B5D6BC  7C 00 00 34 */	cntlzw r0, r0
/* 80B5D6C0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B5D6C4  4E 80 00 20 */	blr 
