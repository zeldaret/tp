lbl_802DEAF8:
/* 802DEAF8  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 802DEAFC  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 802DEB00  7C 05 00 40 */	cmplw r5, r0
/* 802DEB04  40 80 00 1C */	bge lbl_802DEB20
/* 802DEB08  80 A3 00 04 */	lwz r5, 4(r3)
/* 802DEB0C  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 802DEB10  7C 65 02 14 */	add r3, r5, r0
/* 802DEB14  A0 03 00 06 */	lhz r0, 6(r3)
/* 802DEB18  7C 65 02 14 */	add r3, r5, r0
/* 802DEB1C  4E 80 00 20 */	blr 
lbl_802DEB20:
/* 802DEB20  38 60 00 00 */	li r3, 0
/* 802DEB24  4E 80 00 20 */	blr 
