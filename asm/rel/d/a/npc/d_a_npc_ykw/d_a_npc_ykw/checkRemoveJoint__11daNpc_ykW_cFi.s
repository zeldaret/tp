lbl_80B67B4C:
/* 80B67B4C  20 04 00 09 */	subfic r0, r4, 9
/* 80B67B50  7C 00 00 34 */	cntlzw r0, r0
/* 80B67B54  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B67B58  4E 80 00 20 */	blr 
