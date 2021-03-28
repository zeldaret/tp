lbl_80CE4F00:
/* 80CE4F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE4F04  7C 08 02 A6 */	mflr r0
/* 80CE4F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE4F0C  3C 60 80 CE */	lis r3, data_80CE6924@ha
/* 80CE4F10  38 63 69 24 */	addi r3, r3, data_80CE6924@l
/* 80CE4F14  4B 57 E2 38 */	b ModuleConstructorsX
/* 80CE4F18  4B 57 E1 70 */	b ModuleProlog
/* 80CE4F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE4F20  7C 08 03 A6 */	mtlr r0
/* 80CE4F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE4F28  4E 80 00 20 */	blr 
