lbl_80B6F814:
/* 80B6F814  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80B6F818  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80B6F81C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B6F820  38 60 FF FF */	li r3, -1
/* 80B6F824  4D 82 00 20 */	beqlr 
/* 80B6F828  7C 03 03 78 */	mr r3, r0
/* 80B6F82C  4E 80 00 20 */	blr 
