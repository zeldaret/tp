lbl_80A63830:
/* 80A63830  20 04 00 0A */	subfic r0, r4, 0xa
/* 80A63834  7C 00 00 34 */	cntlzw r0, r0
/* 80A63838  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A6383C  4E 80 00 20 */	blr 
