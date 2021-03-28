lbl_80BDCC0C:
/* 80BDCC0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDCC10  7C 08 02 A6 */	mflr r0
/* 80BDCC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDCC18  4B 68 64 74 */	b ModuleEpilog
/* 80BDCC1C  3C 60 80 BE */	lis r3, data_80BDD6C4@ha
/* 80BDCC20  38 63 D6 C4 */	addi r3, r3, data_80BDD6C4@l
/* 80BDCC24  4B 68 65 6C */	b ModuleDestructorsX
/* 80BDCC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDCC2C  7C 08 03 A6 */	mtlr r0
/* 80BDCC30  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDCC34  4E 80 00 20 */	blr 
