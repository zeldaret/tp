lbl_802A6634:
/* 802A6634  38 A0 00 01 */	li r5, 1
/* 802A6638  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 802A663C  7C A5 00 30 */	slw r5, r5, r0
/* 802A6640  54 80 E8 FA */	rlwinm r0, r4, 0x1d, 3, 0x1d
/* 802A6644  7C 03 00 2E */	lwzx r0, r3, r0
/* 802A6648  7C A3 00 38 */	and r3, r5, r0
/* 802A664C  30 03 FF FF */	addic r0, r3, -1
/* 802A6650  7C 00 19 10 */	subfe r0, r0, r3
/* 802A6654  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 802A6658  4E 80 00 20 */	blr 
