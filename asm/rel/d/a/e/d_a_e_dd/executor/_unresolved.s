lbl_806A21D8:
/* 806A21D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A21DC  7C 08 02 A6 */	mflr r0
/* 806A21E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A21E4  4B BC 0E AC */	b ModuleUnresolved
/* 806A21E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A21EC  7C 08 03 A6 */	mtlr r0
/* 806A21F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806A21F4  4E 80 00 20 */	blr 
