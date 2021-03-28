lbl_80A9B810:
/* 80A9B810  20 04 00 06 */	subfic r0, r4, 6
/* 80A9B814  7C 00 00 34 */	cntlzw r0, r0
/* 80A9B818  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A9B81C  4E 80 00 20 */	blr 
