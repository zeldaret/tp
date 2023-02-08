lbl_805715DC:
/* 805715DC  20 04 00 07 */	subfic r0, r4, 7
/* 805715E0  7C 00 00 34 */	cntlzw r0, r0
/* 805715E4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 805715E8  4E 80 00 20 */	blr 
