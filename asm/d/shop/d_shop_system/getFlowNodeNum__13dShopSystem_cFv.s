lbl_8019AB00:
/* 8019AB00  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 8019AB04  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8019AB08  28 00 FF FF */	cmplwi r0, 0xffff
/* 8019AB0C  38 60 FF FF */	li r3, -1
/* 8019AB10  4D 82 00 20 */	beqlr 
/* 8019AB14  7C 03 03 78 */	mr r3, r0
/* 8019AB18  4E 80 00 20 */	blr 
