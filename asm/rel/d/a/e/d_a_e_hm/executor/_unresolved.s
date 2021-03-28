lbl_806E0358:
/* 806E0358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E035C  7C 08 02 A6 */	mflr r0
/* 806E0360  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0364  4B B8 2D 2C */	b ModuleUnresolved
/* 806E0368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E036C  7C 08 03 A6 */	mtlr r0
/* 806E0370  38 21 00 10 */	addi r1, r1, 0x10
/* 806E0374  4E 80 00 20 */	blr 
