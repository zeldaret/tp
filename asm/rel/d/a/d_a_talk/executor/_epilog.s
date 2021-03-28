lbl_80D6632C:
/* 80D6632C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66330  7C 08 02 A6 */	mflr r0
/* 80D66334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66338  4B 4F CD 54 */	b ModuleEpilog
/* 80D6633C  3C 60 80 D6 */	lis r3, data_80D66770@ha
/* 80D66340  38 63 67 70 */	addi r3, r3, data_80D66770@l
/* 80D66344  4B 4F CE 4C */	b ModuleDestructorsX
/* 80D66348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6634C  7C 08 03 A6 */	mtlr r0
/* 80D66350  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66354  4E 80 00 20 */	blr 
