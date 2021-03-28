lbl_80BA140C:
/* 80BA140C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA1410  7C 08 02 A6 */	mflr r0
/* 80BA1414  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1418  4B 6C 1C 74 */	b ModuleEpilog
/* 80BA141C  3C 60 80 BA */	lis r3, __destroy_global_chain_reference@ha
/* 80BA1420  38 63 23 84 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BA1424  4B 6C 1D 6C */	b ModuleDestructorsX
/* 80BA1428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA142C  7C 08 03 A6 */	mtlr r0
/* 80BA1430  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1434  4E 80 00 20 */	blr 
