lbl_80C314B8:
/* 80C314B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C314BC  7C 08 02 A6 */	mflr r0
/* 80C314C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C314C4  4B 63 1B CC */	b ModuleUnresolved
/* 80C314C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C314CC  7C 08 03 A6 */	mtlr r0
/* 80C314D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C314D4  4E 80 00 20 */	blr 
