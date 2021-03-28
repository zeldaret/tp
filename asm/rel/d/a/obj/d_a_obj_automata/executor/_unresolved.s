lbl_80BA5658:
/* 80BA5658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA565C  7C 08 02 A6 */	mflr r0
/* 80BA5660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA5664  4B 6B DA 2C */	b ModuleUnresolved
/* 80BA5668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA566C  7C 08 03 A6 */	mtlr r0
/* 80BA5670  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA5674  4E 80 00 20 */	blr 
