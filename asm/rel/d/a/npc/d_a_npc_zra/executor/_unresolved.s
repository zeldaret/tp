lbl_80B78478:
/* 80B78478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7847C  7C 08 02 A6 */	mflr r0
/* 80B78480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B78484  4B 6E AC 0C */	b ModuleUnresolved
/* 80B78488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7848C  7C 08 03 A6 */	mtlr r0
/* 80B78490  38 21 00 10 */	addi r1, r1, 0x10
/* 80B78494  4E 80 00 20 */	blr 
