lbl_80AC906C:
/* 80AC906C  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80AC9070  2C 04 00 00 */	cmpwi r4, 0
/* 80AC9074  4D 82 00 20 */	beqlr 
/* 80AC9078  38 04 FF FF */	addi r0, r4, -1
/* 80AC907C  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80AC9080  4E 80 00 20 */	blr 
