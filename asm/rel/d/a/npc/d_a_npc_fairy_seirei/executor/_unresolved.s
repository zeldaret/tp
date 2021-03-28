lbl_8053FED8:
/* 8053FED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FEDC  7C 08 02 A6 */	mflr r0
/* 8053FEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FEE4  4B D2 31 AC */	b ModuleUnresolved
/* 8053FEE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FEEC  7C 08 03 A6 */	mtlr r0
/* 8053FEF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FEF4  4E 80 00 20 */	blr 
