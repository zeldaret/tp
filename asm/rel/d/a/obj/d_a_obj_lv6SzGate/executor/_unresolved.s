lbl_80C757D8:
/* 80C757D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C757DC  7C 08 02 A6 */	mflr r0
/* 80C757E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C757E4  4B 5E D8 AC */	b ModuleUnresolved
/* 80C757E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C757EC  7C 08 03 A6 */	mtlr r0
/* 80C757F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C757F4  4E 80 00 20 */	blr 
