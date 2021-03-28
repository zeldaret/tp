lbl_809572F4:
/* 809572F4  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 809572F8  2C 04 00 00 */	cmpwi r4, 0
/* 809572FC  4D 82 00 20 */	beqlr 
/* 80957300  38 04 FF FF */	addi r0, r4, -1
/* 80957304  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80957308  4E 80 00 20 */	blr 
