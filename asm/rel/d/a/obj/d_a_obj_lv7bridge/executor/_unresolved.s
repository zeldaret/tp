lbl_80C86358:
/* 80C86358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8635C  7C 08 02 A6 */	mflr r0
/* 80C86360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C86364  4B 5D CD 2C */	b ModuleUnresolved
/* 80C86368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8636C  7C 08 03 A6 */	mtlr r0
/* 80C86370  38 21 00 10 */	addi r1, r1, 0x10
/* 80C86374  4E 80 00 20 */	blr 
