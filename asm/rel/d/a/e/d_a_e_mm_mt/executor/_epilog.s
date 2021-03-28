lbl_80722F2C:
/* 80722F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80722F30  7C 08 02 A6 */	mflr r0
/* 80722F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80722F38  4B B4 01 54 */	b ModuleEpilog
/* 80722F3C  3C 60 80 72 */	lis r3, data_80725854@ha
/* 80722F40  38 63 58 54 */	addi r3, r3, data_80725854@l
/* 80722F44  4B B4 02 4C */	b ModuleDestructorsX
/* 80722F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80722F4C  7C 08 03 A6 */	mtlr r0
/* 80722F50  38 21 00 10 */	addi r1, r1, 0x10
/* 80722F54  4E 80 00 20 */	blr 
