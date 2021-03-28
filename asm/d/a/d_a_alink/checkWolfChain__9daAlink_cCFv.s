lbl_800D05E8:
/* 800D05E8  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D05EC  20 00 01 31 */	subfic r0, r0, 0x131
/* 800D05F0  7C 00 00 34 */	cntlzw r0, r0
/* 800D05F4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D05F8  4E 80 00 20 */	blr 
