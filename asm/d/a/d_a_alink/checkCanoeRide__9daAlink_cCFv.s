lbl_800CF270:
/* 800CF270  88 03 2F AA */	lbz r0, 0x2faa(r3)
/* 800CF274  20 00 00 03 */	subfic r0, r0, 3
/* 800CF278  7C 00 00 34 */	cntlzw r0, r0
/* 800CF27C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800CF280  4E 80 00 20 */	blr 
