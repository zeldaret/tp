lbl_80C55C78:
/* 80C55C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C55C7C  7C 08 02 A6 */	mflr r0
/* 80C55C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C55C84  4B 60 D4 0C */	b ModuleUnresolved
/* 80C55C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C55C8C  7C 08 03 A6 */	mtlr r0
/* 80C55C90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C55C94  4E 80 00 20 */	blr 
