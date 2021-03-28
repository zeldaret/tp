lbl_80BF0678:
/* 80BF0678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF067C  7C 08 02 A6 */	mflr r0
/* 80BF0680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF0684  4B 67 2A 0C */	b ModuleUnresolved
/* 80BF0688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF068C  7C 08 03 A6 */	mtlr r0
/* 80BF0690  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF0694  4E 80 00 20 */	blr 
