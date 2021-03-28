lbl_80C1F9D8:
/* 80C1F9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F9DC  7C 08 02 A6 */	mflr r0
/* 80C1F9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F9E4  4B 64 36 AC */	b ModuleUnresolved
/* 80C1F9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F9EC  7C 08 03 A6 */	mtlr r0
/* 80C1F9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F9F4  4E 80 00 20 */	blr 
