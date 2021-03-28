lbl_809B8DF0:
/* 809B8DF0  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 809B8DF4  2C 04 00 00 */	cmpwi r4, 0
/* 809B8DF8  4D 82 00 20 */	beqlr 
/* 809B8DFC  38 04 FF FF */	addi r0, r4, -1
/* 809B8E00  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 809B8E04  4E 80 00 20 */	blr 
