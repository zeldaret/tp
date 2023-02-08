lbl_80B749E0:
/* 80B749E0  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80B749E4  2C 04 00 00 */	cmpwi r4, 0
/* 80B749E8  4D 82 00 20 */	beqlr 
/* 80B749EC  38 04 FF FF */	addi r0, r4, -1
/* 80B749F0  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80B749F4  4E 80 00 20 */	blr 
