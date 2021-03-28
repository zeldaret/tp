lbl_80C521D8:
/* 80C521D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C521DC  7C 08 02 A6 */	mflr r0
/* 80C521E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C521E4  4B 61 0E AC */	b ModuleUnresolved
/* 80C521E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C521EC  7C 08 03 A6 */	mtlr r0
/* 80C521F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C521F4  4E 80 00 20 */	blr 
