lbl_80B30CA4:
/* 80B30CA4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80B30CA8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B30CAC  7C 03 07 74 */	extsb r3, r0
/* 80B30CB0  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 80B30CB4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B30CB8  7C 03 00 50 */	subf r0, r3, r0
/* 80B30CBC  7C 00 00 34 */	cntlzw r0, r0
/* 80B30CC0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B30CC4  4E 80 00 20 */	blr 
