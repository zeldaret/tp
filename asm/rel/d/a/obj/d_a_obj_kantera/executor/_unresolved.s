lbl_80C38658:
/* 80C38658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3865C  7C 08 02 A6 */	mflr r0
/* 80C38660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C38664  4B 62 AA 2C */	b ModuleUnresolved
/* 80C38668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3866C  7C 08 03 A6 */	mtlr r0
/* 80C38670  38 21 00 10 */	addi r1, r1, 0x10
/* 80C38674  4E 80 00 20 */	blr 
