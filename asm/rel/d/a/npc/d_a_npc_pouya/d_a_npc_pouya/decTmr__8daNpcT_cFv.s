lbl_80AB1D48:
/* 80AB1D48  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80AB1D4C  2C 04 00 00 */	cmpwi r4, 0
/* 80AB1D50  4D 82 00 20 */	beqlr 
/* 80AB1D54  38 04 FF FF */	addi r0, r4, -1
/* 80AB1D58  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80AB1D5C  4E 80 00 20 */	blr 
