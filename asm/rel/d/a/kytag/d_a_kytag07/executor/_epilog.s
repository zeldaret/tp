lbl_8085A22C:
/* 8085A22C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085A230  7C 08 02 A6 */	mflr r0
/* 8085A234  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085A238  4B A0 8E 54 */	b ModuleEpilog
/* 8085A23C  3C 60 80 86 */	lis r3, data_8085A480@ha
/* 8085A240  38 63 A4 80 */	addi r3, r3, data_8085A480@l
/* 8085A244  4B A0 8F 4C */	b ModuleDestructorsX
/* 8085A248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085A24C  7C 08 03 A6 */	mtlr r0
/* 8085A250  38 21 00 10 */	addi r1, r1, 0x10
/* 8085A254  4E 80 00 20 */	blr 
