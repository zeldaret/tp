lbl_800D03C8:
/* 800D03C8  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D03CC  20 00 00 0E */	subfic r0, r0, 0xe
/* 800D03D0  7C 00 00 34 */	cntlzw r0, r0
/* 800D03D4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D03D8  4E 80 00 20 */	blr 
