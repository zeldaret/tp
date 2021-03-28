lbl_802B61BC:
/* 802B61BC  38 00 00 00 */	li r0, 0
/* 802B61C0  88 63 00 2C */	lbz r3, 0x2c(r3)
/* 802B61C4  28 03 00 02 */	cmplwi r3, 2
/* 802B61C8  41 82 00 14 */	beq lbl_802B61DC
/* 802B61CC  28 03 00 08 */	cmplwi r3, 8
/* 802B61D0  41 82 00 0C */	beq lbl_802B61DC
/* 802B61D4  28 03 00 09 */	cmplwi r3, 9
/* 802B61D8  40 82 00 08 */	bne lbl_802B61E0
lbl_802B61DC:
/* 802B61DC  38 00 00 01 */	li r0, 1
lbl_802B61E0:
/* 802B61E0  7C 03 03 78 */	mr r3, r0
/* 802B61E4  4E 80 00 20 */	blr 
