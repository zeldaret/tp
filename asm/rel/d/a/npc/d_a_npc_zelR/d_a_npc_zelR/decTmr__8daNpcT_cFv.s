lbl_80B7186C:
/* 80B7186C  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80B71870  2C 04 00 00 */	cmpwi r4, 0
/* 80B71874  4D 82 00 20 */	beqlr 
/* 80B71878  38 04 FF FF */	addi r0, r4, -1
/* 80B7187C  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80B71880  4E 80 00 20 */	blr 
