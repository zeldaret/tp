lbl_80C685D8:
/* 80C685D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C685DC  7C 08 02 A6 */	mflr r0
/* 80C685E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C685E4  4B 5F AA AC */	b ModuleUnresolved
/* 80C685E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C685EC  7C 08 03 A6 */	mtlr r0
/* 80C685F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C685F4  4E 80 00 20 */	blr 
