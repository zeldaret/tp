lbl_806EA578:
/* 806EA578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EA57C  7C 08 02 A6 */	mflr r0
/* 806EA580  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EA584  4B B7 8B 0C */	b ModuleUnresolved
/* 806EA588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EA58C  7C 08 03 A6 */	mtlr r0
/* 806EA590  38 21 00 10 */	addi r1, r1, 0x10
/* 806EA594  4E 80 00 20 */	blr 
