lbl_805795EC:
/* 805795EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805795F0  7C 08 02 A6 */	mflr r0
/* 805795F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805795F8  4B CE 9A 94 */	b ModuleEpilog
/* 805795FC  3C 60 80 58 */	lis r3, data_8057B35C@ha
/* 80579600  38 63 B3 5C */	addi r3, r3, data_8057B35C@l
/* 80579604  4B CE 9B 8C */	b ModuleDestructorsX
/* 80579608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057960C  7C 08 03 A6 */	mtlr r0
/* 80579610  38 21 00 10 */	addi r1, r1, 0x10
/* 80579614  4E 80 00 20 */	blr 
