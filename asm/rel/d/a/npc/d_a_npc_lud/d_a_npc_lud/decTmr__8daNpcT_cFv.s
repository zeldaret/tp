lbl_80A6FA40:
/* 80A6FA40  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80A6FA44  2C 04 00 00 */	cmpwi r4, 0
/* 80A6FA48  4D 82 00 20 */	beqlr 
/* 80A6FA4C  38 04 FF FF */	addi r0, r4, -1
/* 80A6FA50  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80A6FA54  4E 80 00 20 */	blr 
