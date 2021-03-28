lbl_80B45D50:
/* 80B45D50  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80B45D54  2C 04 00 00 */	cmpwi r4, 0
/* 80B45D58  4D 82 00 20 */	beqlr 
/* 80B45D5C  38 04 FF FF */	addi r0, r4, -1
/* 80B45D60  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80B45D64  4E 80 00 20 */	blr 
