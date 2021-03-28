lbl_805BA0C0:
/* 805BA0C0  A0 03 00 DA */	lhz r0, 0xda(r3)
/* 805BA0C4  54 03 07 38 */	rlwinm r3, r0, 0, 0x1c, 0x1c
/* 805BA0C8  30 03 FF FF */	addic r0, r3, -1
/* 805BA0CC  7C 60 19 10 */	subfe r3, r0, r3
/* 805BA0D0  4E 80 00 20 */	blr 
