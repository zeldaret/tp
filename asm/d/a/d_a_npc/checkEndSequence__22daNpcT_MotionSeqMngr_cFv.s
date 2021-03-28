lbl_80145A24:
/* 80145A24  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80145A28  20 00 00 01 */	subfic r0, r0, 1
/* 80145A2C  7C 00 00 34 */	cntlzw r0, r0
/* 80145A30  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80145A34  4E 80 00 20 */	blr 
