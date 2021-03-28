lbl_80C67EF8:
/* 80C67EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67EFC  7C 08 02 A6 */	mflr r0
/* 80C67F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67F04  4B 5F B1 8C */	b ModuleUnresolved
/* 80C67F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67F0C  7C 08 03 A6 */	mtlr r0
/* 80C67F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67F14  4E 80 00 20 */	blr 
