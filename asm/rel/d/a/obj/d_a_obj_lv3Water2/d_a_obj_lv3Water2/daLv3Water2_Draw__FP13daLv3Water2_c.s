lbl_80C5B0C0:
/* 80C5B0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5B0C4  7C 08 02 A6 */	mflr r0
/* 80C5B0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B0CC  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C5B0D0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C5B0D4  7D 89 03 A6 */	mtctr r12
/* 80C5B0D8  4E 80 04 21 */	bctrl 
/* 80C5B0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5B0E0  7C 08 03 A6 */	mtlr r0
/* 80C5B0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5B0E8  4E 80 00 20 */	blr 
