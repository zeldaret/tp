lbl_80C46078:
/* 80C46078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4607C  7C 08 02 A6 */	mflr r0
/* 80C46080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46084  4B 61 D0 0C */	b ModuleUnresolved
/* 80C46088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4608C  7C 08 03 A6 */	mtlr r0
/* 80C46090  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46094  4E 80 00 20 */	blr 
