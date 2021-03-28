lbl_80573F9C:
/* 80573F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573FA0  7C 08 02 A6 */	mflr r0
/* 80573FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573FA8  4B BD 45 84 */	b execute__8daNpcT_cFv
/* 80573FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573FB0  7C 08 03 A6 */	mtlr r0
/* 80573FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80573FB8  4E 80 00 20 */	blr 
