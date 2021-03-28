lbl_809B9258:
/* 809B9258  20 04 00 0D */	subfic r0, r4, 0xd
/* 809B925C  7C 00 00 34 */	cntlzw r0, r0
/* 809B9260  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 809B9264  4E 80 00 20 */	blr 
