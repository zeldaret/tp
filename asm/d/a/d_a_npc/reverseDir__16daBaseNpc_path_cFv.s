lbl_8014DA48:
/* 8014DA48  88 03 0A 12 */	lbz r0, 0xa12(r3)
/* 8014DA4C  7C 00 07 75 */	extsb. r0, r0
/* 8014DA50  38 00 00 01 */	li r0, 1
/* 8014DA54  40 81 00 08 */	ble lbl_8014DA5C
/* 8014DA58  38 00 FF FF */	li r0, -1
lbl_8014DA5C:
/* 8014DA5C  98 03 0A 12 */	stb r0, 0xa12(r3)
/* 8014DA60  4E 80 00 20 */	blr 
