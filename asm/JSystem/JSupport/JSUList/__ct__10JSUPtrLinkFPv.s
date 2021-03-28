lbl_802DBDFC:
/* 802DBDFC  38 00 00 00 */	li r0, 0
/* 802DBE00  90 03 00 04 */	stw r0, 4(r3)
/* 802DBE04  90 83 00 00 */	stw r4, 0(r3)
/* 802DBE08  90 03 00 08 */	stw r0, 8(r3)
/* 802DBE0C  90 03 00 0C */	stw r0, 0xc(r3)
/* 802DBE10  4E 80 00 20 */	blr 
