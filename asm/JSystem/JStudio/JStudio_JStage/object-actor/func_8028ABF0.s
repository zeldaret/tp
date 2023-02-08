lbl_8028ABF0:
/* 8028ABF0  2C 04 00 02 */	cmpwi r4, 2
/* 8028ABF4  4C 82 00 20 */	bnelr 
/* 8028ABF8  80 05 00 00 */	lwz r0, 0(r5)
/* 8028ABFC  90 03 01 38 */	stw r0, 0x138(r3)
/* 8028AC00  4E 80 00 20 */	blr 
