lbl_80C3862C:
/* 80C3862C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C38630  7C 08 02 A6 */	mflr r0
/* 80C38634  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C38638  4B 62 AA 54 */	b ModuleEpilog
/* 80C3863C  3C 60 80 C4 */	lis r3, data_80C39644@ha
/* 80C38640  38 63 96 44 */	addi r3, r3, data_80C39644@l
/* 80C38644  4B 62 AB 4C */	b ModuleDestructorsX
/* 80C38648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3864C  7C 08 03 A6 */	mtlr r0
/* 80C38650  38 21 00 10 */	addi r1, r1, 0x10
/* 80C38654  4E 80 00 20 */	blr 
