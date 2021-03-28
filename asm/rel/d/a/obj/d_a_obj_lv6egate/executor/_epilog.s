lbl_80C8202C:
/* 80C8202C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82030  7C 08 02 A6 */	mflr r0
/* 80C82034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82038  4B 5E 10 54 */	b ModuleEpilog
/* 80C8203C  3C 60 80 C8 */	lis r3, data_80C82B6C@ha
/* 80C82040  38 63 2B 6C */	addi r3, r3, data_80C82B6C@l
/* 80C82044  4B 5E 11 4C */	b ModuleDestructorsX
/* 80C82048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8204C  7C 08 03 A6 */	mtlr r0
/* 80C82050  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82054  4E 80 00 20 */	blr 
