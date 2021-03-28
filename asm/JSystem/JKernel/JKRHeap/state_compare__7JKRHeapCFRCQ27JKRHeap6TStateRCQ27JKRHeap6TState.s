lbl_802CED88:
/* 802CED88  80 64 00 04 */	lwz r3, 4(r4)
/* 802CED8C  80 05 00 04 */	lwz r0, 4(r5)
/* 802CED90  7C 03 00 50 */	subf r0, r3, r0
/* 802CED94  7C 00 00 34 */	cntlzw r0, r0
/* 802CED98  54 03 D9 7E */	srwi r3, r0, 5
/* 802CED9C  4E 80 00 20 */	blr 
