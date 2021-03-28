lbl_80AE6B4C:
/* 80AE6B4C  20 04 00 08 */	subfic r0, r4, 8
/* 80AE6B50  7C 00 00 34 */	cntlzw r0, r0
/* 80AE6B54  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AE6B58  4E 80 00 20 */	blr 
