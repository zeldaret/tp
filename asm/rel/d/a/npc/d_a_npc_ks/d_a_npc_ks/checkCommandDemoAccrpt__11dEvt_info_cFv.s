lbl_80A5DD10:
/* 80A5DD10  A0 03 00 04 */	lhz r0, 4(r3)
/* 80A5DD14  20 00 00 02 */	subfic r0, r0, 2
/* 80A5DD18  7C 00 00 34 */	cntlzw r0, r0
/* 80A5DD1C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A5DD20  4E 80 00 20 */	blr 
