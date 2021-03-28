lbl_800D03DC:
/* 800D03DC  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D03E0  20 00 00 F3 */	subfic r0, r0, 0xf3
/* 800D03E4  7C 00 00 34 */	cntlzw r0, r0
/* 800D03E8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D03EC  4E 80 00 20 */	blr 
