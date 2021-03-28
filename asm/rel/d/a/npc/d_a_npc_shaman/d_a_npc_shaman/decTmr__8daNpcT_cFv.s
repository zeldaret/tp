lbl_80AE6398:
/* 80AE6398  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80AE639C  2C 04 00 00 */	cmpwi r4, 0
/* 80AE63A0  4D 82 00 20 */	beqlr 
/* 80AE63A4  38 04 FF FF */	addi r0, r4, -1
/* 80AE63A8  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80AE63AC  4E 80 00 20 */	blr 
