lbl_80CAD2D8:
/* 80CAD2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD2DC  7C 08 02 A6 */	mflr r0
/* 80CAD2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD2E4  4B 5B 5D AC */	b ModuleUnresolved
/* 80CAD2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD2EC  7C 08 03 A6 */	mtlr r0
/* 80CAD2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD2F4  4E 80 00 20 */	blr 
