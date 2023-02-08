lbl_8075B7CC:
/* 8075B7CC  A0 03 00 DA */	lhz r0, 0xda(r3)
/* 8075B7D0  54 03 07 38 */	rlwinm r3, r0, 0, 0x1c, 0x1c
/* 8075B7D4  30 03 FF FF */	addic r0, r3, -1
/* 8075B7D8  7C 60 19 10 */	subfe r3, r0, r3
/* 8075B7DC  4E 80 00 20 */	blr 
