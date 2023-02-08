lbl_80AE6438:
/* 80AE6438  80 83 00 00 */	lwz r4, 0(r3)
/* 80AE643C  2C 04 00 00 */	cmpwi r4, 0
/* 80AE6440  41 82 00 0C */	beq lbl_80AE644C
/* 80AE6444  38 04 FF FF */	addi r0, r4, -1
/* 80AE6448  90 03 00 00 */	stw r0, 0(r3)
lbl_80AE644C:
/* 80AE644C  80 63 00 00 */	lwz r3, 0(r3)
/* 80AE6450  4E 80 00 20 */	blr 
