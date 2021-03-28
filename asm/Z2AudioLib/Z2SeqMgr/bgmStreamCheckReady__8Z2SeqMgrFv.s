lbl_802AFDEC:
/* 802AFDEC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802AFDF0  28 03 00 00 */	cmplwi r3, 0
/* 802AFDF4  41 82 00 1C */	beq lbl_802AFE10
/* 802AFDF8  88 83 00 1E */	lbz r4, 0x1e(r3)
/* 802AFDFC  38 00 00 03 */	li r0, 3
/* 802AFE00  38 60 FF FF */	li r3, -1
/* 802AFE04  7C 00 20 10 */	subfc r0, r0, r4
/* 802AFE08  7C 63 01 90 */	subfze r3, r3
/* 802AFE0C  4E 80 00 20 */	blr 
lbl_802AFE10:
/* 802AFE10  38 60 00 00 */	li r3, 0
/* 802AFE14  4E 80 00 20 */	blr 
