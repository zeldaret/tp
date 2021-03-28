lbl_80D60B2C:
/* 80D60B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60B30  7C 08 02 A6 */	mflr r0
/* 80D60B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60B38  4B 50 25 54 */	b ModuleEpilog
/* 80D60B3C  3C 60 80 D6 */	lis r3, data_80D611CC@ha
/* 80D60B40  38 63 11 CC */	addi r3, r3, data_80D611CC@l
/* 80D60B44  4B 50 26 4C */	b ModuleDestructorsX
/* 80D60B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D60B4C  7C 08 03 A6 */	mtlr r0
/* 80D60B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60B54  4E 80 00 20 */	blr 
