lbl_80A9B578:
/* 80A9B578  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80A9B57C  2C 04 00 00 */	cmpwi r4, 0
/* 80A9B580  4D 82 00 20 */	beqlr 
/* 80A9B584  38 04 FF FF */	addi r0, r4, -1
/* 80A9B588  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80A9B58C  4E 80 00 20 */	blr 
