lbl_805CFBE8:
/* 805CFBE8  38 A0 00 01 */	li r5, 1
/* 805CFBEC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805CFBF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805CFBF4  40 82 00 1C */	bne lbl_805CFC10
/* 805CFBF8  3C 80 80 5E */	lis r4, lit_3933@ha
/* 805CFBFC  C0 24 CA 58 */	lfs f1, lit_3933@l(r4)
/* 805CFC00  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805CFC04  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805CFC08  41 82 00 08 */	beq lbl_805CFC10
/* 805CFC0C  38 A0 00 00 */	li r5, 0
lbl_805CFC10:
/* 805CFC10  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 805CFC14  4E 80 00 20 */	blr 
