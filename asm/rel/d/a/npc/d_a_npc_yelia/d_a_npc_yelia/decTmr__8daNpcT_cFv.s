lbl_80B51F64:
/* 80B51F64  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80B51F68  2C 04 00 00 */	cmpwi r4, 0
/* 80B51F6C  4D 82 00 20 */	beqlr 
/* 80B51F70  38 04 FF FF */	addi r0, r4, -1
/* 80B51F74  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80B51F78  4E 80 00 20 */	blr 
