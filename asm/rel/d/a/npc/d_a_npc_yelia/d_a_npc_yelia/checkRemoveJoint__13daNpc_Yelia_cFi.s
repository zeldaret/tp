lbl_80B52214:
/* 80B52214  20 04 00 09 */	subfic r0, r4, 9
/* 80B52218  7C 00 00 34 */	cntlzw r0, r0
/* 80B5221C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B52220  4E 80 00 20 */	blr 
