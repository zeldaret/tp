lbl_80C73E78:
/* 80C73E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73E7C  7C 08 02 A6 */	mflr r0
/* 80C73E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73E84  4B 5E F2 0C */	b ModuleUnresolved
/* 80C73E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73E8C  7C 08 03 A6 */	mtlr r0
/* 80C73E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73E94  4E 80 00 20 */	blr 
