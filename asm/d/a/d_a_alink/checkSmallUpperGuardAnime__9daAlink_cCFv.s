lbl_800D0048:
/* 800D0048  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800D004C  20 00 00 16 */	subfic r0, r0, 0x16
/* 800D0050  7C 00 00 34 */	cntlzw r0, r0
/* 800D0054  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D0058  4E 80 00 20 */	blr 
