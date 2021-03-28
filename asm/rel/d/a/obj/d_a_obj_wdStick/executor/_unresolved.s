lbl_80D31AB8:
/* 80D31AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D31ABC  7C 08 02 A6 */	mflr r0
/* 80D31AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D31AC4  4B 53 15 CC */	b ModuleUnresolved
/* 80D31AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D31ACC  7C 08 03 A6 */	mtlr r0
/* 80D31AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D31AD4  4E 80 00 20 */	blr 
