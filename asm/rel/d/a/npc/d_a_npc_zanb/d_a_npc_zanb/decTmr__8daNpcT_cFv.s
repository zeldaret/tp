lbl_80B6B9D8:
/* 80B6B9D8  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80B6B9DC  2C 04 00 00 */	cmpwi r4, 0
/* 80B6B9E0  4D 82 00 20 */	beqlr 
/* 80B6B9E4  38 04 FF FF */	addi r0, r4, -1
/* 80B6B9E8  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80B6B9EC  4E 80 00 20 */	blr 
