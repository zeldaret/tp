lbl_80A45364:
/* 80A45364  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80A45368  2C 04 00 00 */	cmpwi r4, 0
/* 80A4536C  4D 82 00 20 */	beqlr 
/* 80A45370  38 04 FF FF */	addi r0, r4, -1
/* 80A45374  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80A45378  4E 80 00 20 */	blr 
