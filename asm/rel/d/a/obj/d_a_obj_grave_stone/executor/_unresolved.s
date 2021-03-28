lbl_80C125D8:
/* 80C125D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C125DC  7C 08 02 A6 */	mflr r0
/* 80C125E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C125E4  4B 65 0A AC */	b ModuleUnresolved
/* 80C125E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C125EC  7C 08 03 A6 */	mtlr r0
/* 80C125F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C125F4  4E 80 00 20 */	blr 
