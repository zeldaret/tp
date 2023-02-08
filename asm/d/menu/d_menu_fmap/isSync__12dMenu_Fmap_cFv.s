lbl_801C7AFC:
/* 801C7AFC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801C7B00  28 03 00 00 */	cmplwi r3, 0
/* 801C7B04  41 82 00 18 */	beq lbl_801C7B1C
/* 801C7B08  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801C7B0C  2C 00 00 00 */	cmpwi r0, 0
/* 801C7B10  40 82 00 0C */	bne lbl_801C7B1C
/* 801C7B14  38 60 00 00 */	li r3, 0
/* 801C7B18  4E 80 00 20 */	blr 
lbl_801C7B1C:
/* 801C7B1C  38 60 00 01 */	li r3, 1
/* 801C7B20  4E 80 00 20 */	blr 
