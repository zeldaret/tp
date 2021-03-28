lbl_805C7DB4:
/* 805C7DB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7DB8  7C 08 02 A6 */	mflr r0
/* 805C7DBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7DC0  48 00 2B 85 */	bl create__9daB_DRE_cFv
/* 805C7DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7DC8  7C 08 03 A6 */	mtlr r0
/* 805C7DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7DD0  4E 80 00 20 */	blr 
