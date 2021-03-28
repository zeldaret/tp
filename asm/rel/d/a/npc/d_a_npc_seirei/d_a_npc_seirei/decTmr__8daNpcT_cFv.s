lbl_80AD7ABC:
/* 80AD7ABC  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80AD7AC0  2C 04 00 00 */	cmpwi r4, 0
/* 80AD7AC4  4D 82 00 20 */	beqlr 
/* 80AD7AC8  38 04 FF FF */	addi r0, r4, -1
/* 80AD7ACC  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80AD7AD0  4E 80 00 20 */	blr 
