lbl_80AED268:
/* 80AED268  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80AED26C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80AED270  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AED274  38 60 FF FF */	li r3, -1
/* 80AED278  4D 82 00 20 */	beqlr 
/* 80AED27C  7C 03 03 78 */	mr r3, r0
/* 80AED280  4E 80 00 20 */	blr 
