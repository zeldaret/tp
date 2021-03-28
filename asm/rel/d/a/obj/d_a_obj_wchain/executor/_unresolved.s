lbl_80D2FED8:
/* 80D2FED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2FEDC  7C 08 02 A6 */	mflr r0
/* 80D2FEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2FEE4  4B 53 31 AC */	b ModuleUnresolved
/* 80D2FEE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2FEEC  7C 08 03 A6 */	mtlr r0
/* 80D2FEF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2FEF4  4E 80 00 20 */	blr 
