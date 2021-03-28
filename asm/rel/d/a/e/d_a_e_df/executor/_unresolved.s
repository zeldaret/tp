lbl_806A7658:
/* 806A7658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A765C  7C 08 02 A6 */	mflr r0
/* 806A7660  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A7664  4B BB BA 2C */	b ModuleUnresolved
/* 806A7668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A766C  7C 08 03 A6 */	mtlr r0
/* 806A7670  38 21 00 10 */	addi r1, r1, 0x10
/* 806A7674  4E 80 00 20 */	blr 
