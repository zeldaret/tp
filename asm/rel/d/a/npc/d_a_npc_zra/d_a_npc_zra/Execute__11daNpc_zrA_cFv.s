lbl_80B7A550:
/* 80B7A550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7A554  7C 08 02 A6 */	mflr r0
/* 80B7A558  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7A55C  4B 5D 7A B8 */	b execute__8daNpcF_cFv
/* 80B7A560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7A564  7C 08 03 A6 */	mtlr r0
/* 80B7A568  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7A56C  4E 80 00 20 */	blr 
