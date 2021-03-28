lbl_806B6418:
/* 806B6418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B641C  7C 08 02 A6 */	mflr r0
/* 806B6420  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B6424  4B BA CC 6C */	b ModuleUnresolved
/* 806B6428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B642C  7C 08 03 A6 */	mtlr r0
/* 806B6430  38 21 00 10 */	addi r1, r1, 0x10
/* 806B6434  4E 80 00 20 */	blr 
