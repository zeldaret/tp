lbl_80C5C390:
/* 80C5C390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C394  7C 08 02 A6 */	mflr r0
/* 80C5C398  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C39C  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C5C3A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C5C3A4  7D 89 03 A6 */	mtctr r12
/* 80C5C3A8  4E 80 04 21 */	bctrl 
/* 80C5C3AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C3B0  7C 08 03 A6 */	mtlr r0
/* 80C5C3B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C3B8  4E 80 00 20 */	blr 
