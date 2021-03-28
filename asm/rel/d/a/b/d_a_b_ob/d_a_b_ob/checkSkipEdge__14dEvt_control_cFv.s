lbl_806185F4:
/* 806185F4  A0 03 00 DA */	lhz r0, 0xda(r3)
/* 806185F8  54 03 07 38 */	rlwinm r3, r0, 0, 0x1c, 0x1c
/* 806185FC  30 03 FF FF */	addic r0, r3, -1
/* 80618600  7C 60 19 10 */	subfe r3, r0, r3
/* 80618604  4E 80 00 20 */	blr 
