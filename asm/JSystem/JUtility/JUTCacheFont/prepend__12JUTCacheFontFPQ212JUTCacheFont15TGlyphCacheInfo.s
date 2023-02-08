lbl_802DDFAC:
/* 802DDFAC  80 A3 00 9C */	lwz r5, 0x9c(r3)
/* 802DDFB0  90 83 00 9C */	stw r4, 0x9c(r3)
/* 802DDFB4  38 00 00 00 */	li r0, 0
/* 802DDFB8  90 04 00 00 */	stw r0, 0(r4)
/* 802DDFBC  90 A4 00 04 */	stw r5, 4(r4)
/* 802DDFC0  28 05 00 00 */	cmplwi r5, 0
/* 802DDFC4  40 82 00 0C */	bne lbl_802DDFD0
/* 802DDFC8  90 83 00 A0 */	stw r4, 0xa0(r3)
/* 802DDFCC  4E 80 00 20 */	blr 
lbl_802DDFD0:
/* 802DDFD0  90 85 00 00 */	stw r4, 0(r5)
/* 802DDFD4  4E 80 00 20 */	blr 
