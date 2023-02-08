lbl_80AC5648:
/* 80AC5648  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80AC564C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80AC5650  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AC5654  38 60 FF FF */	li r3, -1
/* 80AC5658  4D 82 00 20 */	beqlr 
/* 80AC565C  7C 03 03 78 */	mr r3, r0
/* 80AC5660  4E 80 00 20 */	blr 
