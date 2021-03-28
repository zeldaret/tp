lbl_800CF284:
/* 800CF284  88 03 2F AA */	lbz r0, 0x2faa(r3)
/* 800CF288  20 00 00 01 */	subfic r0, r0, 1
/* 800CF28C  7C 00 00 34 */	cntlzw r0, r0
/* 800CF290  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800CF294  4E 80 00 20 */	blr 
