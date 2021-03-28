lbl_807E24E8:
/* 807E24E8  A0 03 00 04 */	lhz r0, 4(r3)
/* 807E24EC  20 00 00 02 */	subfic r0, r0, 2
/* 807E24F0  7C 00 00 34 */	cntlzw r0, r0
/* 807E24F4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 807E24F8  4E 80 00 20 */	blr 
