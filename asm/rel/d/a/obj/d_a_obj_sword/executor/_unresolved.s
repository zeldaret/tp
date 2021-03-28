lbl_80CFD538:
/* 80CFD538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFD53C  7C 08 02 A6 */	mflr r0
/* 80CFD540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFD544  4B 56 5B 4C */	b ModuleUnresolved
/* 80CFD548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFD54C  7C 08 03 A6 */	mtlr r0
/* 80CFD550  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFD554  4E 80 00 20 */	blr 
