lbl_800D0598:
/* 800D0598  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D059C  20 00 01 19 */	subfic r0, r0, 0x119
/* 800D05A0  7C 00 00 34 */	cntlzw r0, r0
/* 800D05A4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D05A8  4E 80 00 20 */	blr 
