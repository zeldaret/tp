lbl_80D525D8:
/* 80D525D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D525DC  7C 08 02 A6 */	mflr r0
/* 80D525E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D525E4  4B 51 0A AC */	b ModuleUnresolved
/* 80D525E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D525EC  7C 08 03 A6 */	mtlr r0
/* 80D525F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D525F4  4E 80 00 20 */	blr 
