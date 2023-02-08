lbl_80D0C108:
/* 80D0C108  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0C10C  7C 08 02 A6 */	mflr r0
/* 80D0C110  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0C114  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80D0C118  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D0C11C  7D 89 03 A6 */	mtctr r12
/* 80D0C120  4E 80 04 21 */	bctrl 
/* 80D0C124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0C128  7C 08 03 A6 */	mtlr r0
/* 80D0C12C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0C130  4E 80 00 20 */	blr 
