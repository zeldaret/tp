lbl_80A7AAE0:
/* 80A7AAE0  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80A7AAE4  2C 04 00 00 */	cmpwi r4, 0
/* 80A7AAE8  4D 82 00 20 */	beqlr 
/* 80A7AAEC  38 04 FF FF */	addi r0, r4, -1
/* 80A7AAF0  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80A7AAF4  4E 80 00 20 */	blr 
