lbl_8029FEEC:
/* 8029FEEC  80 A3 00 58 */	lwz r5, 0x58(r3)
/* 8029FEF0  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8029FEF4  48 00 00 18 */	b lbl_8029FF0C
lbl_8029FEF8:
/* 8029FEF8  80 65 00 00 */	lwz r3, 0(r5)
/* 8029FEFC  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 8029FF00  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8029FF04  98 03 00 2C */	stb r0, 0x2c(r3)
/* 8029FF08  80 A5 00 0C */	lwz r5, 0xc(r5)
lbl_8029FF0C:
/* 8029FF0C  28 05 00 00 */	cmplwi r5, 0
/* 8029FF10  40 82 FF E8 */	bne lbl_8029FEF8
/* 8029FF14  4E 80 00 20 */	blr 
