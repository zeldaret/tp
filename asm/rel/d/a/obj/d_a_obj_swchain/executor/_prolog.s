lbl_80CF8640:
/* 80CF8640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF8644  7C 08 02 A6 */	mflr r0
/* 80CF8648  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF864C  3C 60 80 D0 */	lis r3, data_80CFB6E4@ha
/* 80CF8650  38 63 B6 E4 */	addi r3, r3, data_80CFB6E4@l
/* 80CF8654  4B 56 AA F8 */	b ModuleConstructorsX
/* 80CF8658  4B 56 AA 30 */	b ModuleProlog
/* 80CF865C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF8660  7C 08 03 A6 */	mtlr r0
/* 80CF8664  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF8668  4E 80 00 20 */	blr 
