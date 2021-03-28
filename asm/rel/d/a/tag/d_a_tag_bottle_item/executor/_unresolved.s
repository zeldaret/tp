lbl_80D55FB8:
/* 80D55FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55FBC  7C 08 02 A6 */	mflr r0
/* 80D55FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55FC4  4B 50 D0 CC */	b ModuleUnresolved
/* 80D55FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55FCC  7C 08 03 A6 */	mtlr r0
/* 80D55FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55FD4  4E 80 00 20 */	blr 
