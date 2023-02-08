lbl_802CACB0:
/* 802CACB0  80 63 00 00 */	lwz r3, 0(r3)
/* 802CACB4  28 03 00 00 */	cmplwi r3, 0
/* 802CACB8  41 82 00 0C */	beq lbl_802CACC4
/* 802CACBC  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 802CACC0  4E 80 00 20 */	blr 
lbl_802CACC4:
/* 802CACC4  C0 22 C4 64 */	lfs f1, lit_3486(r2)
/* 802CACC8  4E 80 00 20 */	blr 
