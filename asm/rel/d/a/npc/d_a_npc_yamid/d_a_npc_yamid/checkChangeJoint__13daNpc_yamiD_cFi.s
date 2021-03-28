lbl_80B45F54:
/* 80B45F54  20 04 00 04 */	subfic r0, r4, 4
/* 80B45F58  7C 00 00 34 */	cntlzw r0, r0
/* 80B45F5C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B45F60  4E 80 00 20 */	blr 
