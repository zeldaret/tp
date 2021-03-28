lbl_80B67830:
/* 80B67830  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80B67834  2C 04 00 00 */	cmpwi r4, 0
/* 80B67838  4D 82 00 20 */	beqlr 
/* 80B6783C  38 04 FF FF */	addi r0, r4, -1
/* 80B67840  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80B67844  4E 80 00 20 */	blr 
