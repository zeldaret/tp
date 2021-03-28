lbl_80AC4228:
/* 80AC4228  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80AC422C  2C 04 00 00 */	cmpwi r4, 0
/* 80AC4230  4D 82 00 20 */	beqlr 
/* 80AC4234  38 04 FF FF */	addi r0, r4, -1
/* 80AC4238  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80AC423C  4E 80 00 20 */	blr 
