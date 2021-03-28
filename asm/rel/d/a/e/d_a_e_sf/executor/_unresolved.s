lbl_80785098:
/* 80785098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078509C  7C 08 02 A6 */	mflr r0
/* 807850A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807850A4  4B AD DF EC */	b ModuleUnresolved
/* 807850A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807850AC  7C 08 03 A6 */	mtlr r0
/* 807850B0  38 21 00 10 */	addi r1, r1, 0x10
/* 807850B4  4E 80 00 20 */	blr 
