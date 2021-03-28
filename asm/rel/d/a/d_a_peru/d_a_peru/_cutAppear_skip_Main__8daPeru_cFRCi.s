lbl_80D4AAF0:
/* 80D4AAF0  38 60 00 00 */	li r3, 0
/* 80D4AAF4  80 04 00 00 */	lwz r0, 0(r4)
/* 80D4AAF8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80D4AAFC  4C 82 00 20 */	bnelr 
/* 80D4AB00  38 60 00 01 */	li r3, 1
/* 80D4AB04  4E 80 00 20 */	blr 
