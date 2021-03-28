lbl_80AC6E74:
/* 80AC6E74  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80AC6E78  2C 04 00 00 */	cmpwi r4, 0
/* 80AC6E7C  4D 82 00 20 */	beqlr 
/* 80AC6E80  38 04 FF FF */	addi r0, r4, -1
/* 80AC6E84  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80AC6E88  4E 80 00 20 */	blr 
