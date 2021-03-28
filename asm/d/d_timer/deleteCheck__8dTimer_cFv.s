lbl_8025D524:
/* 8025D524  88 03 01 6C */	lbz r0, 0x16c(r3)
/* 8025D528  20 00 00 07 */	subfic r0, r0, 7
/* 8025D52C  7C 00 00 34 */	cntlzw r0, r0
/* 8025D530  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8025D534  4E 80 00 20 */	blr 
