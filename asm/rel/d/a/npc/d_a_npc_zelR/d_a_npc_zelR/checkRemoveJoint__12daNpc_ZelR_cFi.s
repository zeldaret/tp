lbl_80B71A64:
/* 80B71A64  20 04 00 0D */	subfic r0, r4, 0xd
/* 80B71A68  7C 00 00 34 */	cntlzw r0, r0
/* 80B71A6C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B71A70  4E 80 00 20 */	blr 
