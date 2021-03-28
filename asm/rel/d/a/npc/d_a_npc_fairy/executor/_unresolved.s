lbl_809B1A78:
/* 809B1A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B1A7C  7C 08 02 A6 */	mflr r0
/* 809B1A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B1A84  4B 8B 16 0C */	b ModuleUnresolved
/* 809B1A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B1A8C  7C 08 03 A6 */	mtlr r0
/* 809B1A90  38 21 00 10 */	addi r1, r1, 0x10
/* 809B1A94  4E 80 00 20 */	blr 
