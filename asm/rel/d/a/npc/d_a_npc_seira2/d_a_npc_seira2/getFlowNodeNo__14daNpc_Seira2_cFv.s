lbl_80AD179C:
/* 80AD179C  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80AD17A0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80AD17A4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AD17A8  38 60 FF FF */	li r3, -1
/* 80AD17AC  4D 82 00 20 */	beqlr 
/* 80AD17B0  7C 03 03 78 */	mr r3, r0
/* 80AD17B4  4E 80 00 20 */	blr 
