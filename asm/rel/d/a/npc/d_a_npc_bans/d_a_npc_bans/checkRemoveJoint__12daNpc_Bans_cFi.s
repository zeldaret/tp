lbl_80967C14:
/* 80967C14  20 04 00 0B */	subfic r0, r4, 0xb
/* 80967C18  7C 00 00 34 */	cntlzw r0, r0
/* 80967C1C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80967C20  4E 80 00 20 */	blr 
