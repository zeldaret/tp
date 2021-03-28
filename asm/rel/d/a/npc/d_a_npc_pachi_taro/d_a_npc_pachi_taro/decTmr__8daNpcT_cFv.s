lbl_80AA1294:
/* 80AA1294  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80AA1298  2C 04 00 00 */	cmpwi r4, 0
/* 80AA129C  4D 82 00 20 */	beqlr 
/* 80AA12A0  38 04 FF FF */	addi r0, r4, -1
/* 80AA12A4  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80AA12A8  4E 80 00 20 */	blr 
