lbl_809D6C1C:
/* 809D6C1C  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 809D6C20  2C 04 00 00 */	cmpwi r4, 0
/* 809D6C24  4D 82 00 20 */	beqlr 
/* 809D6C28  38 04 FF FF */	addi r0, r4, -1
/* 809D6C2C  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 809D6C30  4E 80 00 20 */	blr 
