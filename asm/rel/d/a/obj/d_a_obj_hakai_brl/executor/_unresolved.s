lbl_80C16718:
/* 80C16718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1671C  7C 08 02 A6 */	mflr r0
/* 80C16720  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16724  4B 64 C9 6C */	b ModuleUnresolved
/* 80C16728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1672C  7C 08 03 A6 */	mtlr r0
/* 80C16730  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16734  4E 80 00 20 */	blr 
