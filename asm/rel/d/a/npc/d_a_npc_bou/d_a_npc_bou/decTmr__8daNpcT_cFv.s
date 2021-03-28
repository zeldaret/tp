lbl_809724F0:
/* 809724F0  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 809724F4  2C 04 00 00 */	cmpwi r4, 0
/* 809724F8  4D 82 00 20 */	beqlr 
/* 809724FC  38 04 FF FF */	addi r0, r4, -1
/* 80972500  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80972504  4E 80 00 20 */	blr 
