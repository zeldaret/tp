lbl_80BAE2D8:
/* 80BAE2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAE2DC  7C 08 02 A6 */	mflr r0
/* 80BAE2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAE2E4  4B 6B 4D AC */	b ModuleUnresolved
/* 80BAE2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAE2EC  7C 08 03 A6 */	mtlr r0
/* 80BAE2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAE2F4  4E 80 00 20 */	blr 
