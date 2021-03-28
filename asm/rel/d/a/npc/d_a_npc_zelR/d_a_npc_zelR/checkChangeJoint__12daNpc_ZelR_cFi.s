lbl_80B71A54:
/* 80B71A54  20 04 00 03 */	subfic r0, r4, 3
/* 80B71A58  7C 00 00 34 */	cntlzw r0, r0
/* 80B71A5C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B71A60  4E 80 00 20 */	blr 
