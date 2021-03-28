lbl_8046B338:
/* 8046B338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046B33C  7C 08 02 A6 */	mflr r0
/* 8046B340  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046B344  4B DF 7D 4C */	b ModuleUnresolved
/* 8046B348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046B34C  7C 08 03 A6 */	mtlr r0
/* 8046B350  38 21 00 10 */	addi r1, r1, 0x10
/* 8046B354  4E 80 00 20 */	blr 
