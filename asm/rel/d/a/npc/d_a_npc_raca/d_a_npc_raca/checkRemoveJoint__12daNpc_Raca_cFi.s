lbl_80AB8DDC:
/* 80AB8DDC  20 04 00 08 */	subfic r0, r4, 8
/* 80AB8DE0  7C 00 00 34 */	cntlzw r0, r0
/* 80AB8DE4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AB8DE8  4E 80 00 20 */	blr 
