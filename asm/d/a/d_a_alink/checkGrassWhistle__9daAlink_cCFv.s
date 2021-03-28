lbl_800D0704:
/* 800D0704  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0708  20 00 00 BA */	subfic r0, r0, 0xba
/* 800D070C  7C 00 00 34 */	cntlzw r0, r0
/* 800D0710  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D0714  4E 80 00 20 */	blr 
