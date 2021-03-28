lbl_80A19FA4:
/* 80A19FA4  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80A19FA8  2C 04 00 00 */	cmpwi r4, 0
/* 80A19FAC  4D 82 00 20 */	beqlr 
/* 80A19FB0  38 04 FF FF */	addi r0, r4, -1
/* 80A19FB4  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80A19FB8  4E 80 00 20 */	blr 
