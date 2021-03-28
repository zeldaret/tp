lbl_80B2469C:
/* 80B2469C  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80B246A0  2C 04 00 00 */	cmpwi r4, 0
/* 80B246A4  4D 82 00 20 */	beqlr 
/* 80B246A8  38 04 FF FF */	addi r0, r4, -1
/* 80B246AC  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80B246B0  4E 80 00 20 */	blr 
