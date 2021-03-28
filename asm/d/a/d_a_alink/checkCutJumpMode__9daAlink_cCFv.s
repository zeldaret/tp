lbl_800D09C8:
/* 800D09C8  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D09CC  20 00 00 26 */	subfic r0, r0, 0x26
/* 800D09D0  7C 00 00 34 */	cntlzw r0, r0
/* 800D09D4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D09D8  4E 80 00 20 */	blr 
