lbl_802F7AFC:
/* 802F7AFC  80 63 00 EC */	lwz r3, 0xec(r3)
/* 802F7B00  28 03 00 00 */	cmplwi r3, 0
/* 802F7B04  40 82 00 0C */	bne lbl_802F7B10
/* 802F7B08  38 60 00 00 */	li r3, 0
/* 802F7B0C  4E 80 00 20 */	blr 
lbl_802F7B10:
/* 802F7B10  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802F7B14  4E 80 00 20 */	blr 
