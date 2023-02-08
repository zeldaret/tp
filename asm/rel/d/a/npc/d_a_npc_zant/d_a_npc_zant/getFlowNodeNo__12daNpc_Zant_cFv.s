lbl_80B6C880:
/* 80B6C880  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80B6C884  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80B6C888  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B6C88C  38 60 FF FF */	li r3, -1
/* 80B6C890  4D 82 00 20 */	beqlr 
/* 80B6C894  7C 03 03 78 */	mr r3, r0
/* 80B6C898  4E 80 00 20 */	blr 
