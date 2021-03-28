lbl_80BFFF58:
/* 80BFFF58  A8 05 00 0E */	lha r0, 0xe(r5)
/* 80BFFF5C  20 00 00 FD */	subfic r0, r0, 0xfd
/* 80BFFF60  7C 00 00 34 */	cntlzw r0, r0
/* 80BFFF64  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80BFFF68  90 04 10 C4 */	stw r0, 0x10c4(r4)
/* 80BFFF6C  4E 80 00 20 */	blr 
