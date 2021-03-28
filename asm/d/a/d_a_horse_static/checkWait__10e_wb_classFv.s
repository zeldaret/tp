lbl_80037C7C:
/* 80037C7C  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 80037C80  20 00 00 2A */	subfic r0, r0, 0x2a
/* 80037C84  7C 00 00 34 */	cntlzw r0, r0
/* 80037C88  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80037C8C  4E 80 00 20 */	blr 
