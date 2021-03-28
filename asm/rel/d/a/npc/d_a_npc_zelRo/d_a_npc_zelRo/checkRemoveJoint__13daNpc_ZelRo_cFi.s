lbl_80B74BE0:
/* 80B74BE0  20 04 00 0F */	subfic r0, r4, 0xf
/* 80B74BE4  7C 00 00 34 */	cntlzw r0, r0
/* 80B74BE8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B74BEC  4E 80 00 20 */	blr 
