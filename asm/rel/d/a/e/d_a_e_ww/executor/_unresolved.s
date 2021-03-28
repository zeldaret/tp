lbl_807E7658:
/* 807E7658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E765C  7C 08 02 A6 */	mflr r0
/* 807E7660  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E7664  4B A7 BA 2C */	b ModuleUnresolved
/* 807E7668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E766C  7C 08 03 A6 */	mtlr r0
/* 807E7670  38 21 00 10 */	addi r1, r1, 0x10
/* 807E7674  4E 80 00 20 */	blr 
