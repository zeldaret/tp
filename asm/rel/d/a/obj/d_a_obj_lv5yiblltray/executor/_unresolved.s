lbl_80C6EBD8:
/* 80C6EBD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6EBDC  7C 08 02 A6 */	mflr r0
/* 80C6EBE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6EBE4  4B 5F 44 AC */	b ModuleUnresolved
/* 80C6EBE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6EBEC  7C 08 03 A6 */	mtlr r0
/* 80C6EBF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6EBF4  4E 80 00 20 */	blr 
