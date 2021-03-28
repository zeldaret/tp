lbl_809D8FEC:
/* 809D8FEC  20 04 00 04 */	subfic r0, r4, 4
/* 809D8FF0  7C 00 00 34 */	cntlzw r0, r0
/* 809D8FF4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 809D8FF8  4E 80 00 20 */	blr 
