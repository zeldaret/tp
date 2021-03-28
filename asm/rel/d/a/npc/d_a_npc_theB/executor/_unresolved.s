lbl_80AFC6D8:
/* 80AFC6D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFC6DC  7C 08 02 A6 */	mflr r0
/* 80AFC6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFC6E4  4B 76 69 AC */	b ModuleUnresolved
/* 80AFC6E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFC6EC  7C 08 03 A6 */	mtlr r0
/* 80AFC6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFC6F4  4E 80 00 20 */	blr 
