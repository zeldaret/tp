lbl_80B5D2E4:
/* 80B5D2E4  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80B5D2E8  2C 04 00 00 */	cmpwi r4, 0
/* 80B5D2EC  4D 82 00 20 */	beqlr 
/* 80B5D2F0  38 04 FF FF */	addi r0, r4, -1
/* 80B5D2F4  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80B5D2F8  4E 80 00 20 */	blr 
