lbl_802A4AA0:
/* 802A4AA0  80 03 00 08 */	lwz r0, 8(r3)
/* 802A4AA4  7C 04 00 40 */	cmplw r4, r0
/* 802A4AA8  41 80 00 0C */	blt lbl_802A4AB4
/* 802A4AAC  38 60 00 00 */	li r3, 0
/* 802A4AB0  4E 80 00 20 */	blr 
lbl_802A4AB4:
/* 802A4AB4  80 63 00 04 */	lwz r3, 4(r3)
/* 802A4AB8  54 80 10 3A */	slwi r0, r4, 2
/* 802A4ABC  7C 63 00 2E */	lwzx r3, r3, r0
/* 802A4AC0  4E 80 00 20 */	blr 
