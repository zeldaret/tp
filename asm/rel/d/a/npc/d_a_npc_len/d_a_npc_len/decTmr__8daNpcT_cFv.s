lbl_80A68B14:
/* 80A68B14  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80A68B18  2C 04 00 00 */	cmpwi r4, 0
/* 80A68B1C  4D 82 00 20 */	beqlr 
/* 80A68B20  38 04 FF FF */	addi r0, r4, -1
/* 80A68B24  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80A68B28  4E 80 00 20 */	blr 
