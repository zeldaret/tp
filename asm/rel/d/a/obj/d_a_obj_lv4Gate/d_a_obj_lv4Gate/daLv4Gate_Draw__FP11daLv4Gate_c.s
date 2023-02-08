lbl_80C5F2BC:
/* 80C5F2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F2C0  7C 08 02 A6 */	mflr r0
/* 80C5F2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F2C8  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C5F2CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C5F2D0  7D 89 03 A6 */	mtctr r12
/* 80C5F2D4  4E 80 04 21 */	bctrl 
/* 80C5F2D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F2DC  7C 08 03 A6 */	mtlr r0
/* 80C5F2E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F2E4  4E 80 00 20 */	blr 
