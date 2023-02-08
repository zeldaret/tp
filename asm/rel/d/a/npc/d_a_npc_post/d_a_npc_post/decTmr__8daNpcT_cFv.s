lbl_80AACE7C:
/* 80AACE7C  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80AACE80  2C 04 00 00 */	cmpwi r4, 0
/* 80AACE84  4D 82 00 20 */	beqlr 
/* 80AACE88  38 04 FF FF */	addi r0, r4, -1
/* 80AACE8C  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80AACE90  4E 80 00 20 */	blr 
