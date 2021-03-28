lbl_80AFF45C:
/* 80AFF45C  7C 86 07 34 */	extsh r6, r4
/* 80AFF460  2C 05 00 00 */	cmpwi r5, 0
/* 80AFF464  40 82 00 10 */	bne lbl_80AFF474
/* 80AFF468  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80AFF46C  7C 00 30 00 */	cmpw r0, r6
/* 80AFF470  4D 82 00 20 */	beqlr 
lbl_80AFF474:
/* 80AFF474  2C 04 00 00 */	cmpwi r4, 0
/* 80AFF478  4D 80 00 20 */	bltlr 
/* 80AFF47C  2C 04 00 06 */	cmpwi r4, 6
/* 80AFF480  4C 80 00 20 */	bgelr 
/* 80AFF484  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80AFF488  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80AFF48C  38 00 FF FF */	li r0, -1
/* 80AFF490  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80AFF494  38 00 00 00 */	li r0, 0
/* 80AFF498  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80AFF49C  4E 80 00 20 */	blr 
