lbl_80C50F78:
/* 80C50F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C50F7C  7C 08 02 A6 */	mflr r0
/* 80C50F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C50F84  4B 61 21 0C */	b ModuleUnresolved
/* 80C50F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C50F8C  7C 08 03 A6 */	mtlr r0
/* 80C50F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C50F94  4E 80 00 20 */	blr 
