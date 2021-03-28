lbl_800D05FC:
/* 800D05FC  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0600  20 00 00 F1 */	subfic r0, r0, 0xf1
/* 800D0604  7C 00 00 34 */	cntlzw r0, r0
/* 800D0608  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D060C  4E 80 00 20 */	blr 
