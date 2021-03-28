lbl_800D0A14:
/* 800D0A14  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0A18  20 00 01 23 */	subfic r0, r0, 0x123
/* 800D0A1C  7C 00 00 34 */	cntlzw r0, r0
/* 800D0A20  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D0A24  4E 80 00 20 */	blr 
