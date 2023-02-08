lbl_809997DC:
/* 809997DC  20 04 00 09 */	subfic r0, r4, 9
/* 809997E0  7C 00 00 34 */	cntlzw r0, r0
/* 809997E4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 809997E8  4E 80 00 20 */	blr 
