lbl_809954A8:
/* 809954A8  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 809954AC  2C 04 00 00 */	cmpwi r4, 0
/* 809954B0  4D 82 00 20 */	beqlr 
/* 809954B4  38 04 FF FF */	addi r0, r4, -1
/* 809954B8  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 809954BC  4E 80 00 20 */	blr 
