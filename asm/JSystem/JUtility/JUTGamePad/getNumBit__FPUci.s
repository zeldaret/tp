lbl_802E16F8:
/* 802E16F8  38 A0 00 80 */	li r5, 0x80
/* 802E16FC  54 80 07 7E */	clrlwi r0, r4, 0x1d
/* 802E1700  7C A5 06 30 */	sraw r5, r5, r0
/* 802E1704  7C 80 1E 70 */	srawi r0, r4, 3
/* 802E1708  7C 03 00 AE */	lbzx r0, r3, r0
/* 802E170C  7C A0 00 38 */	and r0, r5, r0
/* 802E1710  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 802E1714  30 03 FF FF */	addic r0, r3, -1
/* 802E1718  7C 60 19 10 */	subfe r3, r0, r3
/* 802E171C  4E 80 00 20 */	blr 
