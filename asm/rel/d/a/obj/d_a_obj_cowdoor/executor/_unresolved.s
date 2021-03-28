lbl_80BCC7D8:
/* 80BCC7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCC7DC  7C 08 02 A6 */	mflr r0
/* 80BCC7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCC7E4  4B 69 68 AC */	b ModuleUnresolved
/* 80BCC7E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCC7EC  7C 08 03 A6 */	mtlr r0
/* 80BCC7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCC7F4  4E 80 00 20 */	blr 
