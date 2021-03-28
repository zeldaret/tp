lbl_8028BCEC:
/* 8028BCEC  2C 04 00 02 */	cmpwi r4, 2
/* 8028BCF0  4C 82 00 20 */	bnelr 
/* 8028BCF4  80 05 00 00 */	lwz r0, 0(r5)
/* 8028BCF8  90 03 01 08 */	stw r0, 0x108(r3)
/* 8028BCFC  4E 80 00 20 */	blr 
