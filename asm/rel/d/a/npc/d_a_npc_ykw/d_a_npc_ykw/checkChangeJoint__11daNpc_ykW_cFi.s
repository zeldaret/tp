lbl_80B67B3C:
/* 80B67B3C  20 04 00 05 */	subfic r0, r4, 5
/* 80B67B40  7C 00 00 34 */	cntlzw r0, r0
/* 80B67B44  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B67B48  4E 80 00 20 */	blr 
