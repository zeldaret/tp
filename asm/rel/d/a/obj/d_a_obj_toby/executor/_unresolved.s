lbl_80D136F8:
/* 80D136F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D136FC  7C 08 02 A6 */	mflr r0
/* 80D13700  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D13704  4B 54 F9 8C */	b ModuleUnresolved
/* 80D13708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1370C  7C 08 03 A6 */	mtlr r0
/* 80D13710  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13714  4E 80 00 20 */	blr 
