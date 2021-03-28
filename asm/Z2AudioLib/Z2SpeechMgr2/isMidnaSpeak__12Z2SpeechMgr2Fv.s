lbl_802CCF88:
/* 802CCF88  88 03 03 FE */	lbz r0, 0x3fe(r3)
/* 802CCF8C  28 00 00 01 */	cmplwi r0, 1
/* 802CCF90  41 82 00 0C */	beq lbl_802CCF9C
/* 802CCF94  28 00 00 02 */	cmplwi r0, 2
/* 802CCF98  40 82 00 18 */	bne lbl_802CCFB0
lbl_802CCF9C:
/* 802CCF9C  80 03 00 00 */	lwz r0, 0(r3)
/* 802CCFA0  28 00 00 00 */	cmplwi r0, 0
/* 802CCFA4  41 82 00 0C */	beq lbl_802CCFB0
/* 802CCFA8  38 60 00 01 */	li r3, 1
/* 802CCFAC  4E 80 00 20 */	blr 
lbl_802CCFB0:
/* 802CCFB0  38 60 00 00 */	li r3, 0
/* 802CCFB4  4E 80 00 20 */	blr 
