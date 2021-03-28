lbl_805A13D8:
/* 805A13D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A13DC  7C 08 02 A6 */	mflr r0
/* 805A13E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A13E4  4B CC 1C AC */	b ModuleUnresolved
/* 805A13E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A13EC  7C 08 03 A6 */	mtlr r0
/* 805A13F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A13F4  4E 80 00 20 */	blr 
