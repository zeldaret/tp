lbl_8099D080:
/* 8099D080  20 04 00 13 */	subfic r0, r4, 0x13
/* 8099D084  7C 00 00 34 */	cntlzw r0, r0
/* 8099D088  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8099D08C  4E 80 00 20 */	blr 
