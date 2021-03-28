lbl_80CC1538:
/* 80CC1538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC153C  7C 08 02 A6 */	mflr r0
/* 80CC1540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1544  4B 5A 1B 4C */	b ModuleUnresolved
/* 80CC1548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC154C  7C 08 03 A6 */	mtlr r0
/* 80CC1550  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1554  4E 80 00 20 */	blr 
