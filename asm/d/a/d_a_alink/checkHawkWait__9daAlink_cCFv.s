lbl_800D0508:
/* 800D0508  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D050C  20 00 00 BC */	subfic r0, r0, 0xbc
/* 800D0510  7C 00 00 34 */	cntlzw r0, r0
/* 800D0514  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D0518  4E 80 00 20 */	blr 
