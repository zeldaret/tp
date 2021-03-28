lbl_80ADA630:
/* 80ADA630  7C 86 07 34 */	extsh r6, r4
/* 80ADA634  2C 05 00 00 */	cmpwi r5, 0
/* 80ADA638  40 82 00 10 */	bne lbl_80ADA648
/* 80ADA63C  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80ADA640  7C 00 30 00 */	cmpw r0, r6
/* 80ADA644  4D 82 00 20 */	beqlr 
lbl_80ADA648:
/* 80ADA648  2C 04 00 00 */	cmpwi r4, 0
/* 80ADA64C  4D 80 00 20 */	bltlr 
/* 80ADA650  2C 04 00 17 */	cmpwi r4, 0x17
/* 80ADA654  4C 80 00 20 */	bgelr 
/* 80ADA658  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80ADA65C  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80ADA660  38 00 FF FF */	li r0, -1
/* 80ADA664  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80ADA668  38 00 00 00 */	li r0, 0
/* 80ADA66C  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80ADA670  4E 80 00 20 */	blr 
