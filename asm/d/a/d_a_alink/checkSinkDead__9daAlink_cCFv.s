lbl_800D09B4:
/* 800D09B4  88 03 2F BD */	lbz r0, 0x2fbd(r3)
/* 800D09B8  20 00 00 FF */	subfic r0, r0, 0xff
/* 800D09BC  7C 00 00 34 */	cntlzw r0, r0
/* 800D09C0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D09C4  4E 80 00 20 */	blr 
