lbl_80BD4E60:
/* 80BD4E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD4E64  7C 08 02 A6 */	mflr r0
/* 80BD4E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4E6C  3C 60 80 BD */	lis r3, data_80BD59F4@ha
/* 80BD4E70  38 63 59 F4 */	addi r3, r3, data_80BD59F4@l
/* 80BD4E74  4B 68 E2 D8 */	b ModuleConstructorsX
/* 80BD4E78  4B 68 E2 10 */	b ModuleProlog
/* 80BD4E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4E80  7C 08 03 A6 */	mtlr r0
/* 80BD4E84  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4E88  4E 80 00 20 */	blr 
