lbl_80C1B858:
/* 80C1B858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1B85C  7C 08 02 A6 */	mflr r0
/* 80C1B860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1B864  4B 64 78 2C */	b ModuleUnresolved
/* 80C1B868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1B86C  7C 08 03 A6 */	mtlr r0
/* 80C1B870  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1B874  4E 80 00 20 */	blr 
