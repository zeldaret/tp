lbl_8057119C:
/* 8057119C  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 805711A0  2C 04 00 00 */	cmpwi r4, 0
/* 805711A4  4D 82 00 20 */	beqlr 
/* 805711A8  38 04 FF FF */	addi r0, r4, -1
/* 805711AC  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 805711B0  4E 80 00 20 */	blr 
