lbl_800CF2B4:
/* 800CF2B4  88 03 2F AA */	lbz r0, 0x2faa(r3)
/* 800CF2B8  20 00 00 02 */	subfic r0, r0, 2
/* 800CF2BC  7C 00 00 34 */	cntlzw r0, r0
/* 800CF2C0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800CF2C4  4E 80 00 20 */	blr 
