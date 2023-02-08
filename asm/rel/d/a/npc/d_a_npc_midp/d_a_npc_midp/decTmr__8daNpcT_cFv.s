lbl_80A736CC:
/* 80A736CC  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80A736D0  2C 04 00 00 */	cmpwi r4, 0
/* 80A736D4  4D 82 00 20 */	beqlr 
/* 80A736D8  38 04 FF FF */	addi r0, r4, -1
/* 80A736DC  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80A736E0  4E 80 00 20 */	blr 
