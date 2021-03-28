lbl_80ADA674:
/* 80ADA674  2C 04 00 00 */	cmpwi r4, 0
/* 80ADA678  4D 80 00 20 */	bltlr 
/* 80ADA67C  2C 04 00 0D */	cmpwi r4, 0xd
/* 80ADA680  4C 80 00 20 */	bgelr 
/* 80ADA684  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 80ADA688  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 80ADA68C  38 00 FF FF */	li r0, -1
/* 80ADA690  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 80ADA694  38 00 00 00 */	li r0, 0
/* 80ADA698  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 80ADA69C  4E 80 00 20 */	blr 
