lbl_809D9C58:
/* 809D9C58  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 809D9C5C  2C 04 00 00 */	cmpwi r4, 0
/* 809D9C60  4D 82 00 20 */	beqlr 
/* 809D9C64  38 04 FF FF */	addi r0, r4, -1
/* 809D9C68  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 809D9C6C  4E 80 00 20 */	blr 
