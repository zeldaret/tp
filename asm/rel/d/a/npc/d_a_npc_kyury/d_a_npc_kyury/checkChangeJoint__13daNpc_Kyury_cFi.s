lbl_80A63820:
/* 80A63820  20 04 00 04 */	subfic r0, r4, 4
/* 80A63824  7C 00 00 34 */	cntlzw r0, r0
/* 80A63828  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A6382C  4E 80 00 20 */	blr 
