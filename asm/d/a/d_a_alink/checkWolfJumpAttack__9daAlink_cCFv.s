lbl_800D0610:
/* 800D0610  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0614  20 00 01 1C */	subfic r0, r0, 0x11c
/* 800D0618  7C 00 00 34 */	cntlzw r0, r0
/* 800D061C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D0620  4E 80 00 20 */	blr 
