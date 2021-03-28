lbl_80C452B8:
/* 80C452B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C452BC  7C 08 02 A6 */	mflr r0
/* 80C452C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C452C4  4B 61 DD CC */	b ModuleUnresolved
/* 80C452C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C452CC  7C 08 03 A6 */	mtlr r0
/* 80C452D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C452D4  4E 80 00 20 */	blr 
