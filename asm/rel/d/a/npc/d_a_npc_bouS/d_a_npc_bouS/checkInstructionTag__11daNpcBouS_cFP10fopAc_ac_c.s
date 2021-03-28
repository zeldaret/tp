lbl_80974A04:
/* 80974A04  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80974A08  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80974A0C  7C 03 07 74 */	extsb r3, r0
/* 80974A10  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 80974A14  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80974A18  7C 03 00 50 */	subf r0, r3, r0
/* 80974A1C  7C 00 00 34 */	cntlzw r0, r0
/* 80974A20  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80974A24  4E 80 00 20 */	blr 
