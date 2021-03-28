lbl_806F0CB8:
/* 806F0CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F0CBC  7C 08 02 A6 */	mflr r0
/* 806F0CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F0CC4  4B B7 23 CC */	b ModuleUnresolved
/* 806F0CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F0CCC  7C 08 03 A6 */	mtlr r0
/* 806F0CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 806F0CD4  4E 80 00 20 */	blr 
