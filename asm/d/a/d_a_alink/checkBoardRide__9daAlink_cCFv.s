lbl_800CF25C:
/* 800CF25C  88 03 2F AA */	lbz r0, 0x2faa(r3)
/* 800CF260  20 00 00 04 */	subfic r0, r0, 4
/* 800CF264  7C 00 00 34 */	cntlzw r0, r0
/* 800CF268  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800CF26C  4E 80 00 20 */	blr 
