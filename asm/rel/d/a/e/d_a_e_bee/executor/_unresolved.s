lbl_806827D8:
/* 806827D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806827DC  7C 08 02 A6 */	mflr r0
/* 806827E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806827E4  4B BE 08 AC */	b ModuleUnresolved
/* 806827E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806827EC  7C 08 03 A6 */	mtlr r0
/* 806827F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806827F4  4E 80 00 20 */	blr 
