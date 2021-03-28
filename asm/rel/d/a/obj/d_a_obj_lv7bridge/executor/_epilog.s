lbl_80C8632C:
/* 80C8632C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C86330  7C 08 02 A6 */	mflr r0
/* 80C86334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C86338  4B 5D CD 54 */	b ModuleEpilog
/* 80C8633C  3C 60 80 C8 */	lis r3, data_80C8799C@ha
/* 80C86340  38 63 79 9C */	addi r3, r3, data_80C8799C@l
/* 80C86344  4B 5D CE 4C */	b ModuleDestructorsX
/* 80C86348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8634C  7C 08 03 A6 */	mtlr r0
/* 80C86350  38 21 00 10 */	addi r1, r1, 0x10
/* 80C86354  4E 80 00 20 */	blr 
