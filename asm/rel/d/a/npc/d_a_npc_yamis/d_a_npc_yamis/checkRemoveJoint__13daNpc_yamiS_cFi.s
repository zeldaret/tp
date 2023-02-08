lbl_80B495C8:
/* 80B495C8  20 04 00 06 */	subfic r0, r4, 6
/* 80B495CC  7C 00 00 34 */	cntlzw r0, r0
/* 80B495D0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B495D4  4E 80 00 20 */	blr 
