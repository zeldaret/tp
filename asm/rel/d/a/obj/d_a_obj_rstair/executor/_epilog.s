lbl_80CC150C:
/* 80CC150C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC1510  7C 08 02 A6 */	mflr r0
/* 80CC1514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1518  4B 5A 1B 74 */	b ModuleEpilog
/* 80CC151C  3C 60 80 CC */	lis r3, data_80CC26FC@ha
/* 80CC1520  38 63 26 FC */	addi r3, r3, data_80CC26FC@l
/* 80CC1524  4B 5A 1C 6C */	b ModuleDestructorsX
/* 80CC1528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC152C  7C 08 03 A6 */	mtlr r0
/* 80CC1530  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1534  4E 80 00 20 */	blr 
