lbl_80C10BD8:
/* 80C10BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C10BDC  7C 08 02 A6 */	mflr r0
/* 80C10BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C10BE4  4B 65 24 AC */	b ModuleUnresolved
/* 80C10BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C10BEC  7C 08 03 A6 */	mtlr r0
/* 80C10BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C10BF4  4E 80 00 20 */	blr 
