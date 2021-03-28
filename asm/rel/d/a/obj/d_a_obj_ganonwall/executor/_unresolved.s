lbl_80BF4CD8:
/* 80BF4CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF4CDC  7C 08 02 A6 */	mflr r0
/* 80BF4CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF4CE4  4B 66 E3 AC */	b ModuleUnresolved
/* 80BF4CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF4CEC  7C 08 03 A6 */	mtlr r0
/* 80BF4CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF4CF4  4E 80 00 20 */	blr 
