lbl_80D5EE4C:
/* 80D5EE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5EE50  7C 08 02 A6 */	mflr r0
/* 80D5EE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5EE58  4B 50 42 34 */	b ModuleEpilog
/* 80D5EE5C  3C 60 80 D6 */	lis r3, data_80D5F204@ha
/* 80D5EE60  38 63 F2 04 */	addi r3, r3, data_80D5F204@l
/* 80D5EE64  4B 50 43 2C */	b ModuleDestructorsX
/* 80D5EE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5EE6C  7C 08 03 A6 */	mtlr r0
/* 80D5EE70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5EE74  4E 80 00 20 */	blr 
