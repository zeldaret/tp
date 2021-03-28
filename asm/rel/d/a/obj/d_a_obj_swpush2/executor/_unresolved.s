lbl_80CFE078:
/* 80CFE078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFE07C  7C 08 02 A6 */	mflr r0
/* 80CFE080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFE084  4B 56 50 0C */	b ModuleUnresolved
/* 80CFE088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFE08C  7C 08 03 A6 */	mtlr r0
/* 80CFE090  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFE094  4E 80 00 20 */	blr 
