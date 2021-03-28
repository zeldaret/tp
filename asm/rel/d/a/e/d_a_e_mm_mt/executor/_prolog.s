lbl_80722F00:
/* 80722F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80722F04  7C 08 02 A6 */	mflr r0
/* 80722F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80722F0C  3C 60 80 72 */	lis r3, data_80725850@ha
/* 80722F10  38 63 58 50 */	addi r3, r3, data_80725850@l
/* 80722F14  4B B4 02 38 */	b ModuleConstructorsX
/* 80722F18  4B B4 01 70 */	b ModuleProlog
/* 80722F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80722F20  7C 08 03 A6 */	mtlr r0
/* 80722F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80722F28  4E 80 00 20 */	blr 
