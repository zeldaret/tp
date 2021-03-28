lbl_800D04F4:
/* 800D04F4  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D04F8  20 00 00 B5 */	subfic r0, r0, 0xb5
/* 800D04FC  7C 00 00 34 */	cntlzw r0, r0
/* 800D0500  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D0504  4E 80 00 20 */	blr 
