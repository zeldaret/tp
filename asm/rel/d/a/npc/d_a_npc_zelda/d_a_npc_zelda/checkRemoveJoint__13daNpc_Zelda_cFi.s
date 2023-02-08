lbl_80B77F4C:
/* 80B77F4C  20 04 00 11 */	subfic r0, r4, 0x11
/* 80B77F50  7C 00 00 34 */	cntlzw r0, r0
/* 80B77F54  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B77F58  4E 80 00 20 */	blr 
