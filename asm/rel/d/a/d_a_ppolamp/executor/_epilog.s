lbl_80D4C8EC:
/* 80D4C8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4C8F0  7C 08 02 A6 */	mflr r0
/* 80D4C8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4C8F8  4B 51 67 94 */	b ModuleEpilog
/* 80D4C8FC  3C 60 80 D5 */	lis r3, data_80D4D278@ha
/* 80D4C900  38 63 D2 78 */	addi r3, r3, data_80D4D278@l
/* 80D4C904  4B 51 68 8C */	b ModuleDestructorsX
/* 80D4C908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4C90C  7C 08 03 A6 */	mtlr r0
/* 80D4C910  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4C914  4E 80 00 20 */	blr 
