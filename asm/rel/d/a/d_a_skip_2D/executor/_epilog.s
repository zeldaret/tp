lbl_80D4D42C:
/* 80D4D42C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D430  7C 08 02 A6 */	mflr r0
/* 80D4D434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D438  4B 51 5C 54 */	b ModuleEpilog
/* 80D4D43C  3C 60 80 D5 */	lis r3, data_80D4D6D8@ha
/* 80D4D440  38 63 D6 D8 */	addi r3, r3, data_80D4D6D8@l
/* 80D4D444  4B 51 5D 4C */	b ModuleDestructorsX
/* 80D4D448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D44C  7C 08 03 A6 */	mtlr r0
/* 80D4D450  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D454  4E 80 00 20 */	blr 
