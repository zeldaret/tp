lbl_80CA5A94:
/* 80CA5A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA5A98  7C 08 02 A6 */	mflr r0
/* 80CA5A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA5AA0  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CA5AA4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CA5AA8  7D 89 03 A6 */	mtctr r12
/* 80CA5AAC  4E 80 04 21 */	bctrl 
/* 80CA5AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA5AB4  7C 08 03 A6 */	mtlr r0
/* 80CA5AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA5ABC  4E 80 00 20 */	blr 
