lbl_80D4BCF0:
/* 80D4BCF0  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80D4BCF4  2C 04 00 00 */	cmpwi r4, 0
/* 80D4BCF8  4D 82 00 20 */	beqlr 
/* 80D4BCFC  38 04 FF FF */	addi r0, r4, -1
/* 80D4BD00  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80D4BD04  4E 80 00 20 */	blr 
