lbl_802AB2A0:
/* 802AB2A0  80 C3 00 00 */	lwz r6, 0(r3)
/* 802AB2A4  48 00 00 24 */	b lbl_802AB2C8
lbl_802AB2A8:
/* 802AB2A8  80 66 00 00 */	lwz r3, 0(r6)
/* 802AB2AC  80 A3 00 00 */	lwz r5, 0(r3)
/* 802AB2B0  28 05 00 00 */	cmplwi r5, 0
/* 802AB2B4  41 82 00 10 */	beq lbl_802AB2C4
/* 802AB2B8  80 05 00 20 */	lwz r0, 0x20(r5)
/* 802AB2BC  7C 04 00 40 */	cmplw r4, r0
/* 802AB2C0  4D 82 00 20 */	beqlr 
lbl_802AB2C4:
/* 802AB2C4  80 C6 00 0C */	lwz r6, 0xc(r6)
lbl_802AB2C8:
/* 802AB2C8  28 06 00 00 */	cmplwi r6, 0
/* 802AB2CC  40 82 FF DC */	bne lbl_802AB2A8
/* 802AB2D0  38 60 00 00 */	li r3, 0
/* 802AB2D4  4E 80 00 20 */	blr 
