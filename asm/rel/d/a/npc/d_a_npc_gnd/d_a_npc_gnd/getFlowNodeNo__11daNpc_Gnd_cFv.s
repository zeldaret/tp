lbl_809BBFDC:
/* 809BBFDC  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 809BBFE0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 809BBFE4  28 00 FF FF */	cmplwi r0, 0xffff
/* 809BBFE8  38 60 FF FF */	li r3, -1
/* 809BBFEC  4D 82 00 20 */	beqlr 
/* 809BBFF0  7C 03 03 78 */	mr r3, r0
/* 809BBFF4  4E 80 00 20 */	blr 
