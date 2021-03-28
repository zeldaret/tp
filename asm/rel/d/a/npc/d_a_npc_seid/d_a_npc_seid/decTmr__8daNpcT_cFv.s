lbl_80ACB1AC:
/* 80ACB1AC  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80ACB1B0  2C 04 00 00 */	cmpwi r4, 0
/* 80ACB1B4  4D 82 00 20 */	beqlr 
/* 80ACB1B8  38 04 FF FF */	addi r0, r4, -1
/* 80ACB1BC  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80ACB1C0  4E 80 00 20 */	blr 
