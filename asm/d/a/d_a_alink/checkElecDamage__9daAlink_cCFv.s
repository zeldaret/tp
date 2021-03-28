lbl_800D04B8:
/* 800D04B8  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D04BC  20 00 01 42 */	subfic r0, r0, 0x142
/* 800D04C0  7C 00 00 34 */	cntlzw r0, r0
/* 800D04C4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D04C8  4E 80 00 20 */	blr 
