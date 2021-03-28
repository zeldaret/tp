lbl_80BDFCB8:
/* 80BDFCB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDFCBC  7C 08 02 A6 */	mflr r0
/* 80BDFCC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDFCC4  4B 68 33 CC */	b ModuleUnresolved
/* 80BDFCC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDFCCC  7C 08 03 A6 */	mtlr r0
/* 80BDFCD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDFCD4  4E 80 00 20 */	blr 
