lbl_80AD48B4:
/* 80AD48B4  20 04 00 08 */	subfic r0, r4, 8
/* 80AD48B8  7C 00 00 34 */	cntlzw r0, r0
/* 80AD48BC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AD48C0  4E 80 00 20 */	blr 
