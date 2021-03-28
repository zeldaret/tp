lbl_800D05C0:
/* 800D05C0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D05C4  20 00 00 17 */	subfic r0, r0, 0x17
/* 800D05C8  7C 00 00 34 */	cntlzw r0, r0
/* 800D05CC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D05D0  4E 80 00 20 */	blr 
