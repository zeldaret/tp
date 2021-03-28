lbl_8028AAB4:
/* 8028AAB4  2C 04 00 02 */	cmpwi r4, 2
/* 8028AAB8  4C 82 00 20 */	bnelr 
/* 8028AABC  80 05 00 00 */	lwz r0, 0(r5)
/* 8028AAC0  90 03 01 34 */	stw r0, 0x134(r3)
/* 8028AAC4  4E 80 00 20 */	blr 
