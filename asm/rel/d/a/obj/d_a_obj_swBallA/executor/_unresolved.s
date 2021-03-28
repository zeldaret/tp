lbl_80CF32D8:
/* 80CF32D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF32DC  7C 08 02 A6 */	mflr r0
/* 80CF32E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF32E4  4B 56 FD AC */	b ModuleUnresolved
/* 80CF32E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF32EC  7C 08 03 A6 */	mtlr r0
/* 80CF32F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF32F4  4E 80 00 20 */	blr 
