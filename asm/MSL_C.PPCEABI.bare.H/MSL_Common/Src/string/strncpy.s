lbl_80368AE8:
/* 80368AE8  38 84 FF FF */	addi r4, r4, -1
/* 80368AEC  38 C3 FF FF */	addi r6, r3, -1
/* 80368AF0  38 A5 00 01 */	addi r5, r5, 1
/* 80368AF4  48 00 00 2C */	b lbl_80368B20
lbl_80368AF8:
/* 80368AF8  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80368AFC  28 00 00 00 */	cmplwi r0, 0
/* 80368B00  9C 06 00 01 */	stbu r0, 1(r6)
/* 80368B04  40 82 00 1C */	bne lbl_80368B20
/* 80368B08  38 00 00 00 */	li r0, 0
/* 80368B0C  48 00 00 08 */	b lbl_80368B14
lbl_80368B10:
/* 80368B10  9C 06 00 01 */	stbu r0, 1(r6)
lbl_80368B14:
/* 80368B14  34 A5 FF FF */	addic. r5, r5, -1
/* 80368B18  40 82 FF F8 */	bne lbl_80368B10
/* 80368B1C  4E 80 00 20 */	blr 
lbl_80368B20:
/* 80368B20  34 A5 FF FF */	addic. r5, r5, -1
/* 80368B24  40 82 FF D4 */	bne lbl_80368AF8
/* 80368B28  4E 80 00 20 */	blr 
