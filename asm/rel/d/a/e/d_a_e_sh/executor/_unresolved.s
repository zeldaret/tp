lbl_8078E2B8:
/* 8078E2B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078E2BC  7C 08 02 A6 */	mflr r0
/* 8078E2C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078E2C4  4B AD 4D CC */	b ModuleUnresolved
/* 8078E2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078E2CC  7C 08 03 A6 */	mtlr r0
/* 8078E2D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8078E2D4  4E 80 00 20 */	blr 
