lbl_80ACD744:
/* 80ACD744  88 03 10 C1 */	lbz r0, 0x10c1(r3)
/* 80ACD748  28 00 00 05 */	cmplwi r0, 5
/* 80ACD74C  4C 82 00 20 */	bnelr 
/* 80ACD750  80 04 00 00 */	lwz r0, 0(r4)
/* 80ACD754  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80ACD758  4C 82 00 20 */	bnelr 
/* 80ACD75C  38 00 00 11 */	li r0, 0x11
/* 80ACD760  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD764  38 00 00 04 */	li r0, 4
/* 80ACD768  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD76C  4E 80 00 20 */	blr 
