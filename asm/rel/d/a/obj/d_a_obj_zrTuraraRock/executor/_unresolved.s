lbl_80D417F8:
/* 80D417F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D417FC  7C 08 02 A6 */	mflr r0
/* 80D41800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41804  4B 52 18 8C */	b ModuleUnresolved
/* 80D41808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4180C  7C 08 03 A6 */	mtlr r0
/* 80D41810  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41814  4E 80 00 20 */	blr 
