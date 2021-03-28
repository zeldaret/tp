lbl_809734B8:
/* 809734B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809734BC  7C 08 02 A6 */	mflr r0
/* 809734C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809734C4  4B 8E FB CC */	b ModuleUnresolved
/* 809734C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809734CC  7C 08 03 A6 */	mtlr r0
/* 809734D0  38 21 00 10 */	addi r1, r1, 0x10
/* 809734D4  4E 80 00 20 */	blr 
