lbl_80A966F8:
/* 80A966F8  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80A966FC  2C 04 00 00 */	cmpwi r4, 0
/* 80A96700  4D 82 00 20 */	beqlr 
/* 80A96704  38 04 FF FF */	addi r0, r4, -1
/* 80A96708  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80A9670C  4E 80 00 20 */	blr 
