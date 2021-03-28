lbl_80BEC638:
/* 80BEC638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEC63C  7C 08 02 A6 */	mflr r0
/* 80BEC640  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEC644  4B 67 6A 4C */	b ModuleUnresolved
/* 80BEC648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEC64C  7C 08 03 A6 */	mtlr r0
/* 80BEC650  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEC654  4E 80 00 20 */	blr 
