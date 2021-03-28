lbl_80A43B1C:
/* 80A43B1C  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80A43B20  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80A43B24  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A43B28  38 60 FF FF */	li r3, -1
/* 80A43B2C  4D 82 00 20 */	beqlr 
/* 80A43B30  7C 03 03 78 */	mr r3, r0
/* 80A43B34  4E 80 00 20 */	blr 
