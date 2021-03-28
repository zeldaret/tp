lbl_80AE1544:
/* 80AE1544  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 80AE1548  7C 23 04 2E */	lfsx f1, r3, r0
/* 80AE154C  4E 80 00 20 */	blr 
