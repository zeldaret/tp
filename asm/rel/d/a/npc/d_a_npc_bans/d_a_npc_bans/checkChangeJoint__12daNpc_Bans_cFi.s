lbl_80967C04:
/* 80967C04  20 04 00 06 */	subfic r0, r4, 6
/* 80967C08  7C 00 00 34 */	cntlzw r0, r0
/* 80967C0C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80967C10  4E 80 00 20 */	blr 
