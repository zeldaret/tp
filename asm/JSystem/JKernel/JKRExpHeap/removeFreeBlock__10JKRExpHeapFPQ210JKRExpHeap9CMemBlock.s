lbl_802CFEB4:
/* 802CFEB4  80 A4 00 08 */	lwz r5, 8(r4)
/* 802CFEB8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802CFEBC  28 05 00 00 */	cmplwi r5, 0
/* 802CFEC0  40 82 00 0C */	bne lbl_802CFECC
/* 802CFEC4  90 83 00 78 */	stw r4, 0x78(r3)
/* 802CFEC8  48 00 00 08 */	b lbl_802CFED0
lbl_802CFECC:
/* 802CFECC  90 85 00 0C */	stw r4, 0xc(r5)
lbl_802CFED0:
/* 802CFED0  28 04 00 00 */	cmplwi r4, 0
/* 802CFED4  40 82 00 0C */	bne lbl_802CFEE0
/* 802CFED8  90 A3 00 7C */	stw r5, 0x7c(r3)
/* 802CFEDC  4E 80 00 20 */	blr 
lbl_802CFEE0:
/* 802CFEE0  90 A4 00 08 */	stw r5, 8(r4)
/* 802CFEE4  4E 80 00 20 */	blr 
