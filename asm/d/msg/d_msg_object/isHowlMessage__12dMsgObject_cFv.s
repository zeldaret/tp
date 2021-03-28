lbl_802370E8:
/* 802370E8  88 03 01 9A */	lbz r0, 0x19a(r3)
/* 802370EC  20 00 00 11 */	subfic r0, r0, 0x11
/* 802370F0  7C 00 00 34 */	cntlzw r0, r0
/* 802370F4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 802370F8  4E 80 00 20 */	blr 
