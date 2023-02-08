lbl_809AA29C:
/* 809AA29C  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 809AA2A0  20 00 00 01 */	subfic r0, r0, 1
/* 809AA2A4  7C 00 00 34 */	cntlzw r0, r0
/* 809AA2A8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 809AA2AC  4E 80 00 20 */	blr 
