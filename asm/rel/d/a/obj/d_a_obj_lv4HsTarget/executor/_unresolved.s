lbl_80C5F598:
/* 80C5F598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F59C  7C 08 02 A6 */	mflr r0
/* 80C5F5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F5A4  4B 60 3A EC */	b ModuleUnresolved
/* 80C5F5A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F5AC  7C 08 03 A6 */	mtlr r0
/* 80C5F5B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F5B4  4E 80 00 20 */	blr 
