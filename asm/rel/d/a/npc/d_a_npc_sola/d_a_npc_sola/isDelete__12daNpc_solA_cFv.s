lbl_80AED284:
/* 80AED284  88 63 0F 80 */	lbz r3, 0xf80(r3)
/* 80AED288  30 03 FF FF */	addic r0, r3, -1
/* 80AED28C  7C 60 19 10 */	subfe r3, r0, r3
/* 80AED290  4E 80 00 20 */	blr 
