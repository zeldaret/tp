lbl_80AF5F00:
/* 80AF5F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF5F04  7C 08 02 A6 */	mflr r0
/* 80AF5F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF5F0C  3C 60 80 AF */	lis r3, data_80AF73F4@ha
/* 80AF5F10  38 63 73 F4 */	addi r3, r3, data_80AF73F4@l
/* 80AF5F14  4B 76 D2 38 */	b ModuleConstructorsX
/* 80AF5F18  4B 76 D1 70 */	b ModuleProlog
/* 80AF5F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5F20  7C 08 03 A6 */	mtlr r0
/* 80AF5F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF5F28  4E 80 00 20 */	blr 
