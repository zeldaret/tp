lbl_8029DEF0:
/* 8029DEF0  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 8029DEF4  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 8029DEF8  B0 03 00 50 */	sth r0, 0x50(r3)
/* 8029DEFC  54 E5 44 2E */	rlwinm r5, r7, 8, 0x10, 0x17
/* 8029DF00  54 E0 0D FC */	rlwinm r0, r7, 1, 0x17, 0x1e
/* 8029DF04  7C A0 03 78 */	or r0, r5, r0
/* 8029DF08  B0 03 00 52 */	sth r0, 0x52(r3)
/* 8029DF0C  B0 83 00 56 */	sth r4, 0x56(r3)
/* 8029DF10  38 00 00 01 */	li r0, 1
/* 8029DF14  B0 03 00 58 */	sth r0, 0x58(r3)
/* 8029DF18  4E 80 00 20 */	blr 
