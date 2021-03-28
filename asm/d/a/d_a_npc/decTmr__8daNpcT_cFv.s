lbl_8014CBF4:
/* 8014CBF4  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 8014CBF8  2C 04 00 00 */	cmpwi r4, 0
/* 8014CBFC  4D 82 00 20 */	beqlr 
/* 8014CC00  38 04 FF FF */	addi r0, r4, -1
/* 8014CC04  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 8014CC08  4E 80 00 20 */	blr 
