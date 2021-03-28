lbl_80A14678:
/* 80A14678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1467C  7C 08 02 A6 */	mflr r0
/* 80A14680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A14684  4B 84 EA 0C */	b ModuleUnresolved
/* 80A14688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1468C  7C 08 03 A6 */	mtlr r0
/* 80A14690  38 21 00 10 */	addi r1, r1, 0x10
/* 80A14694  4E 80 00 20 */	blr 
