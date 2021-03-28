lbl_800CF2C8:
/* 800CF2C8  88 03 2F AA */	lbz r0, 0x2faa(r3)
/* 800CF2CC  20 00 00 05 */	subfic r0, r0, 5
/* 800CF2D0  7C 00 00 34 */	cntlzw r0, r0
/* 800CF2D4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800CF2D8  4E 80 00 20 */	blr 
