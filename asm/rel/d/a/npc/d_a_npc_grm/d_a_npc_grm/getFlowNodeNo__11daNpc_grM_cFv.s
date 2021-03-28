lbl_809D47E8:
/* 809D47E8  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 809D47EC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 809D47F0  28 00 FF FF */	cmplwi r0, 0xffff
/* 809D47F4  38 60 FF FF */	li r3, -1
/* 809D47F8  4D 82 00 20 */	beqlr 
/* 809D47FC  7C 03 03 78 */	mr r3, r0
/* 809D4800  4E 80 00 20 */	blr 
