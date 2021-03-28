lbl_807DFAD8:
/* 807DFAD8  A0 03 00 DA */	lhz r0, 0xda(r3)
/* 807DFADC  54 03 07 38 */	rlwinm r3, r0, 0, 0x1c, 0x1c
/* 807DFAE0  30 03 FF FF */	addic r0, r3, -1
/* 807DFAE4  7C 60 19 10 */	subfe r3, r0, r3
/* 807DFAE8  4E 80 00 20 */	blr 
