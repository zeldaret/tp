lbl_802CFEE8:
/* 802CFEE8  80 A4 00 08 */	lwz r5, 8(r4)
/* 802CFEEC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802CFEF0  28 05 00 00 */	cmplwi r5, 0
/* 802CFEF4  40 82 00 0C */	bne lbl_802CFF00
/* 802CFEF8  90 83 00 80 */	stw r4, 0x80(r3)
/* 802CFEFC  48 00 00 08 */	b lbl_802CFF04
lbl_802CFF00:
/* 802CFF00  90 85 00 0C */	stw r4, 0xc(r5)
lbl_802CFF04:
/* 802CFF04  28 04 00 00 */	cmplwi r4, 0
/* 802CFF08  40 82 00 0C */	bne lbl_802CFF14
/* 802CFF0C  90 A3 00 84 */	stw r5, 0x84(r3)
/* 802CFF10  4E 80 00 20 */	blr 
lbl_802CFF14:
/* 802CFF14  90 A4 00 08 */	stw r5, 8(r4)
/* 802CFF18  4E 80 00 20 */	blr 
