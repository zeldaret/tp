lbl_80C9B378:
/* 80C9B378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9B37C  7C 08 02 A6 */	mflr r0
/* 80C9B380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9B384  4B 5C 7D 0C */	b ModuleUnresolved
/* 80C9B388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9B38C  7C 08 03 A6 */	mtlr r0
/* 80C9B390  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9B394  4E 80 00 20 */	blr 
