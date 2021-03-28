lbl_80B77CD0:
/* 80B77CD0  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80B77CD4  2C 04 00 00 */	cmpwi r4, 0
/* 80B77CD8  4D 82 00 20 */	beqlr 
/* 80B77CDC  38 04 FF FF */	addi r0, r4, -1
/* 80B77CE0  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80B77CE4  4E 80 00 20 */	blr 
