lbl_80BBA71C:
/* 80BBA71C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA720  7C 08 02 A6 */	mflr r0
/* 80BBA724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA728  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BBA72C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BBA730  7D 89 03 A6 */	mtctr r12
/* 80BBA734  4E 80 04 21 */	bctrl 
/* 80BBA738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA73C  7C 08 03 A6 */	mtlr r0
/* 80BBA740  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA744  4E 80 00 20 */	blr 
