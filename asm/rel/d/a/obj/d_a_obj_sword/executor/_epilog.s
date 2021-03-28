lbl_80CFD50C:
/* 80CFD50C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFD510  7C 08 02 A6 */	mflr r0
/* 80CFD514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFD518  4B 56 5B 74 */	b ModuleEpilog
/* 80CFD51C  3C 60 80 D0 */	lis r3, data_80CFDE80@ha
/* 80CFD520  38 63 DE 80 */	addi r3, r3, data_80CFDE80@l
/* 80CFD524  4B 56 5C 6C */	b ModuleDestructorsX
/* 80CFD528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFD52C  7C 08 03 A6 */	mtlr r0
/* 80CFD530  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFD534  4E 80 00 20 */	blr 
