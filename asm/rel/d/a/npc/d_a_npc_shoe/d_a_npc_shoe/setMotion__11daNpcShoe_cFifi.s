lbl_80AE8604:
/* 80AE8604  7C 86 07 34 */	extsh r6, r4
/* 80AE8608  2C 05 00 00 */	cmpwi r5, 0
/* 80AE860C  40 82 00 10 */	bne lbl_80AE861C
/* 80AE8610  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80AE8614  7C 00 30 00 */	cmpw r0, r6
/* 80AE8618  4D 82 00 20 */	beqlr 
lbl_80AE861C:
/* 80AE861C  2C 04 00 00 */	cmpwi r4, 0
/* 80AE8620  4D 80 00 20 */	bltlr 
/* 80AE8624  2C 04 00 05 */	cmpwi r4, 5
/* 80AE8628  4C 80 00 20 */	bgelr 
/* 80AE862C  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80AE8630  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80AE8634  38 00 FF FF */	li r0, -1
/* 80AE8638  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80AE863C  38 00 00 00 */	li r0, 0
/* 80AE8640  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80AE8644  B0 03 0E 16 */	sth r0, 0xe16(r3)
/* 80AE8648  4E 80 00 20 */	blr 
