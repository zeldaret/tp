lbl_80BE5FAC:
/* 80BE5FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE5FB0  7C 08 02 A6 */	mflr r0
/* 80BE5FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE5FB8  4B 67 D0 D4 */	b ModuleEpilog
/* 80BE5FBC  3C 60 80 BE */	lis r3, data_80BE7434@ha
/* 80BE5FC0  38 63 74 34 */	addi r3, r3, data_80BE7434@l
/* 80BE5FC4  4B 67 D1 CC */	b ModuleDestructorsX
/* 80BE5FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE5FCC  7C 08 03 A6 */	mtlr r0
/* 80BE5FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE5FD4  4E 80 00 20 */	blr 
