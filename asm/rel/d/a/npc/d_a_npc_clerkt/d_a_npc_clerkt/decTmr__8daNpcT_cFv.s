lbl_8099CE98:
/* 8099CE98  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 8099CE9C  2C 04 00 00 */	cmpwi r4, 0
/* 8099CEA0  4D 82 00 20 */	beqlr 
/* 8099CEA4  38 04 FF FF */	addi r0, r4, -1
/* 8099CEA8  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 8099CEAC  4E 80 00 20 */	blr 
