lbl_800D05D4:
/* 800D05D4  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D05D8  20 00 00 BE */	subfic r0, r0, 0xbe
/* 800D05DC  7C 00 00 34 */	cntlzw r0, r0
/* 800D05E0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D05E4  4E 80 00 20 */	blr 
