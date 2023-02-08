lbl_802A6614:
/* 802A6614  54 87 E8 FA */	rlwinm r7, r4, 0x1d, 3, 0x1d
/* 802A6618  7C C3 38 2E */	lwzx r6, r3, r7
/* 802A661C  38 A0 00 01 */	li r5, 1
/* 802A6620  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 802A6624  7C A0 00 30 */	slw r0, r5, r0
/* 802A6628  7C C0 00 78 */	andc r0, r6, r0
/* 802A662C  7C 03 39 2E */	stwx r0, r3, r7
/* 802A6630  4E 80 00 20 */	blr 
