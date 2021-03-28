lbl_80B72994:
/* 80B72994  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80B72998  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80B7299C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B729A0  38 60 FF FF */	li r3, -1
/* 80B729A4  4D 82 00 20 */	beqlr 
/* 80B729A8  7C 03 03 78 */	mr r3, r0
/* 80B729AC  4E 80 00 20 */	blr 
