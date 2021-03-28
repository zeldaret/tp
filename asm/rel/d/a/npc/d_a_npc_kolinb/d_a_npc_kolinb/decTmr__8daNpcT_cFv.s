lbl_80A48394:
/* 80A48394  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80A48398  2C 04 00 00 */	cmpwi r4, 0
/* 80A4839C  4D 82 00 20 */	beqlr 
/* 80A483A0  38 04 FF FF */	addi r0, r4, -1
/* 80A483A4  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80A483A8  4E 80 00 20 */	blr 
