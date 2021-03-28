lbl_80C76858:
/* 80C76858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7685C  7C 08 02 A6 */	mflr r0
/* 80C76860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C76864  4B 5E C8 2C */	b ModuleUnresolved
/* 80C76868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7686C  7C 08 03 A6 */	mtlr r0
/* 80C76870  38 21 00 10 */	addi r1, r1, 0x10
/* 80C76874  4E 80 00 20 */	blr 
