lbl_80D6084C:
/* 80D6084C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60850  7C 08 02 A6 */	mflr r0
/* 80D60854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60858  4B 50 28 34 */	b ModuleEpilog
/* 80D6085C  3C 60 80 D6 */	lis r3, data_80D60A7C@ha
/* 80D60860  38 63 0A 7C */	addi r3, r3, data_80D60A7C@l
/* 80D60864  4B 50 29 2C */	b ModuleDestructorsX
/* 80D60868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6086C  7C 08 03 A6 */	mtlr r0
/* 80D60870  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60874  4E 80 00 20 */	blr 
