lbl_802D53B8:
/* 802D53B8  80 A3 00 3C */	lwz r5, 0x3c(r3)
/* 802D53BC  48 00 00 18 */	b lbl_802D53D4
lbl_802D53C0:
/* 802D53C0  80 65 00 00 */	lwz r3, 0(r5)
/* 802D53C4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802D53C8  7C 00 20 40 */	cmplw r0, r4
/* 802D53CC  4D 82 00 20 */	beqlr 
/* 802D53D0  80 A5 00 0C */	lwz r5, 0xc(r5)
lbl_802D53D4:
/* 802D53D4  28 05 00 00 */	cmplwi r5, 0
/* 802D53D8  40 82 FF E8 */	bne lbl_802D53C0
/* 802D53DC  38 60 00 00 */	li r3, 0
/* 802D53E0  4E 80 00 20 */	blr 
