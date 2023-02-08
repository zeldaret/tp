lbl_80B493B4:
/* 80B493B4  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80B493B8  2C 04 00 00 */	cmpwi r4, 0
/* 80B493BC  4D 82 00 20 */	beqlr 
/* 80B493C0  38 04 FF FF */	addi r0, r4, -1
/* 80B493C4  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80B493C8  4E 80 00 20 */	blr 
