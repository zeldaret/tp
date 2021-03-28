lbl_802FBFE8:
/* 802FBFE8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802FBFEC  41 82 00 0C */	beq lbl_802FBFF8
/* 802FBFF0  38 60 00 00 */	li r3, 0
/* 802FBFF4  4E 80 00 20 */	blr 
lbl_802FBFF8:
/* 802FBFF8  80 63 01 10 */	lwz r3, 0x110(r3)
/* 802FBFFC  4E 80 00 20 */	blr 
