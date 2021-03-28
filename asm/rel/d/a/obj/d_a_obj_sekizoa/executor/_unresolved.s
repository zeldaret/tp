lbl_80CCE2B8:
/* 80CCE2B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCE2BC  7C 08 02 A6 */	mflr r0
/* 80CCE2C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCE2C4  4B 59 4D CC */	b ModuleUnresolved
/* 80CCE2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCE2CC  7C 08 03 A6 */	mtlr r0
/* 80CCE2D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCE2D4  4E 80 00 20 */	blr 
