lbl_800D0674:
/* 800D0674  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0678  20 00 00 2A */	subfic r0, r0, 0x2a
/* 800D067C  7C 00 00 34 */	cntlzw r0, r0
/* 800D0680  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D0684  4E 80 00 20 */	blr 
